namespace AtomicCms.Data
{
    using System.Configuration;
    using NHibernate;
    using Configuration = NHibernate.Cfg.Configuration;
    /// <summary>
    /// Singelton class to support Session in View.
    /// </summary>
    public class SessionManager
    {
        private readonly ISessionFactory sessionFactory;

        private SessionManager()
        {
            Configuration config = new Configuration();
            config.Properties[NHibernate.Cfg.Environment.ConnectionString] =
                ConfigurationManager.ConnectionStrings["AtomicCms"].ConnectionString;
            config.Configure();
            this.sessionFactory = config.BuildSessionFactory();
        }

        public static ISessionFactory SessionFactory
        {
            get { return Instance.sessionFactory; }
        }

        private static SessionManager Instance
        {
            get { return NestedSessionManager.sessionManager; }
        }

        public static ISession CurrentSession
        {
            get { return Instance.GetSessionFactory().GetCurrentSession(); }
        }

        private ISessionFactory GetSessionFactory()
        {
            return this.sessionFactory;
        }

        public static ISession OpenSession()
        {
            return Instance.GetSessionFactory().OpenSession();
        }

        #region Nested type: NestedSessionManager

        private class NestedSessionManager
        {
            internal static readonly SessionManager sessionManager =
                new SessionManager();
        }

        #endregion
    }
}