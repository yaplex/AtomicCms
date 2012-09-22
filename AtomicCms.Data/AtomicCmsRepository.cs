using System;
using System.Collections.Generic;
using System.Linq;
using AtomicCms.Common.Data;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Exceptions;
using AtomicCms.Common.IDataContext;
using AtomicCms.Common.Models;
using AtomicCms.Common.Poco;
using AtomicCms.Data.Concrete;
using NHibernate;
using NHibernate.Criterion;

namespace AtomicCms.Data
{
    public class AtomicCmsRepository : NHSession, IAtomicCmsDataRepository
    {
        #region IAtomicCmsDataRepository Members

        public IEnumerable<PageTag> GetPagesTags()
        {
            ISession session = GetSession();
            return session.CreateCriteria<PageTag>()
                .List<PageTag>().Where(x=>x.Page.Status is PublishedStatus);
        }

        public IEnumerable<CmsPage> GetPagesWithTag(string tag)
        {
            // todo: update this to avoid using SQLQuery
            ISession session = GetSession();

            var pages = session.GetNamedQuery("GetPagesWithTag").SetString("tag", tag).List<CmsPage>();
            return pages;
        }

        public new ICollection<T> LoadAll<T>() where T : class
        {
            return base.LoadAll<T>();
        }

        public ICollection<T> Find<T>(Query query) where T : class
        {
            ISession session = GetSession();
            foreach (Criteria q in query.Criterias)
            {
                switch (q.Type)
                {
                    case CriteriaType.Contains:
                        {
                            return session.CreateCriteria(typeof (T))
                                .Add(Restrictions.Like(q.PropertyName, string.Format("%{0}%",q.Value),
                                                       MatchMode.Anywhere).IgnoreCase()).List<T>();
                        }

                    default:
                        throw new NotImplementedException();
                }
            }

            throw new ItemNotFoundException();
        }

        #endregion
    }
}