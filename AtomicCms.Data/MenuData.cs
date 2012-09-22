namespace AtomicCms.Data.Concrete
{
    using System.Collections.Generic;
    using System.Linq;
    using Abstract;
    using Common.Entities;
    using NHibernate;
    using NHibernate.Criterion;

    public class MenuData : NHSession, IMenuData
    {
        #region IMenuData Members

        public CmsMenu LoadMenu(string menuName)
        {
            ISession session = GetSession();

            return session.CreateCriteria(typeof (CmsMenu))
                .Add(Restrictions.Eq("Type",
                                     menuName)).List<CmsMenu>().FirstOrDefault();
        }

        public IEnumerable<CmsMenu> LoadAll()
        {
            return base.LoadAll<CmsMenu>();
        }

        public CmsMenu Load(int id)
        {
            return base.Load<CmsMenu>(id);
        }

        public CmsMenuItem LoadMenuItem(int id)
        {
            return base.Load<CmsMenuItem>(id);
        }

        public void Save(CmsMenu menu)
        {
            base.Save(menu);
        }

        public void SaveMenuItem(CmsMenuItem item)
        {
            base.Save(item);
        }

        #endregion
    }
}