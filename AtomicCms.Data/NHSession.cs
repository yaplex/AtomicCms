namespace AtomicCms.Data.Concrete
{
    using System.Collections.Generic;
    using System.Diagnostics;
    using NHibernate;
    using NHibernate.Criterion;

    public class NHSession
    {
        [DebuggerStepThrough]
        protected ISession GetSession()
        {
            return SessionManager.CurrentSession;
        }

        [DebuggerStepThrough]
        protected virtual ICollection<T> LoadAll<T>() where T : class
        {
            ISession session = this.GetSession();
            return session.CreateCriteria<T>().List<T>();
        }

        [DebuggerStepThrough]
        protected T Get<T>(string propertyName, object propertyValue)
        {
            ISession session = this.GetSession();
            return session.CreateCriteria(typeof (T))
                .Add(Restrictions.Eq(propertyName,
                                     propertyValue).IgnoreCase()).UniqueResult<T>();
        }

        [DebuggerStepThrough]
        public T Load<T>(int id)
        {
            ISession session = this.GetSession();
            return session.Load<T>(id);
        }

        [DebuggerStepThrough]
        public void Save(object o)
        {
            ISession session = this.GetSession();
            using (ITransaction tx = session.BeginTransaction())
            {
                session.SaveOrUpdate(o);
                tx.Commit();
            }
        }

        [DebuggerStepThrough]
        public virtual void Delete(object o)
        {
            ISession session = this.GetSession();
            using (ITransaction tx = session.BeginTransaction())
            {
                session.Delete(o);
                tx.Commit();
            }
        }

        [DebuggerStepThrough]
        public virtual T Get<T>(int id)
        {
            ISession session = this.GetSession();
            return session.Get<T>(id);
        }
    }
}