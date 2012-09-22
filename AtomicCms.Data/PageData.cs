using AtomicCms.Common.Poco;

namespace AtomicCms.Data.Concrete
{
    using System.Collections.Generic;
    using Abstract;
    using Common.Entities;
    using NHibernate;
    using NHibernate.Criterion;

    public class PageData : NHSession, IPageData
    {
        #region IPageData Members

        public CmsPage Load(int id)
        {
            ISession s = base.GetSession();
            return s.Load<CmsPage>(id);
        }

        public IEnumerable<CmsPage> LoadAll()
        {
            ISession session = this.GetSession();
            return session.CreateCriteria<CmsPage>()
                .List<CmsPage>();
        }

        public IEnumerable<CmsPage> LoadAllPublished()
        {
            ISession session = this.GetSession();
            return session.CreateCriteria<CmsPage>()
                .Add(Restrictions.Eq("Status.Id", (int)StatusCode.Published))
                .List<CmsPage>();
        }

        public IEnumerable<CmsPage> LoadLast(int numberOfLastCreated)
        {
            ISession s = GetSession();
            return s.CreateCriteria(typeof (CmsPage))
                .Add(Restrictions.Eq("Status.Id", (int)StatusCode.Published ))
                .AddOrder(Order.Desc("CreatedAt")).SetMaxResults(numberOfLastCreated).List<CmsPage>();
        }

        public void Save(CmsPage page)
        {
            base.Save(page);
        }

        public void Delete(int id)
        {
            base.Delete(Load(id));
        }

        public CmsTag LoadTag(string tagName)
        {
            return base.Get<CmsTag>("Name", tagName);
        }

        #endregion
    }
}