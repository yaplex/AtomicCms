using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using AtomicCms.Common.Extensions;
using AtomicCms.Data;
using AtomicCms.Web.Core.Extensions;
using AtomicCms.Web.Core.IoC;
using AtomicCms.Web.Core.Mvc;
using AtomicCms.Web.Core.Routes;
using log4net;
using log4net.Appender;
using log4net.Config;
using log4net.Repository.Hierarchy;
using NHibernate;
using NHibernate.Context;

namespace AtomicCms.Web
{
    public class MvcApplication : HttpApplication
    {
        protected void Application_Error(object sender, EventArgs e)
        {
            /*           var logger = IoC.Get<LoggingService>();
                       Exception ex = Server.GetLastError();
                       logger.Exception(ex);*/
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute("account",
                            "account/{action}",
                            new {controller = "Account"});

            var entryRoute = new EntryRoute("{name}-{id}/",
                                            new RouteValueDictionary(
                                                new
                                                    {
                                                        controller = "Home",
                                                        action = "Content",
                                                        id = 0,
                                                        name = string.Empty
                                                    }),
                                            new RouteValueDictionary(new {id = @"\d+"}),
                                            new MvcRouteHandler());

            routes.Add("display-entry",
                       entryRoute);

            routes.MapRoute("sitemapxml",
                            "sitemap.xml",
                            new {controller = "Syndication", action = "Sitemap"});

            routes.MapRoute("syndication",
                            "{action}/",
                            new {controller = "Syndication"});

            routes.MapRoute("tag", "tag/{tag}/", new {controller = "Home", action = "Tag"});
            routes.MapRoute("general", "{controller}/{action}/{id}",
                            new {controller = "Home", action = "Default", id = UrlParameter.Optional});
           //routes.MapRoute("error",
                     //       "{*url}", new {controller = "Error", action = "NotFound"});
        }


        public static void SetAdoNetAppenderConnectionStrings(string connectionStringKey)
        {
            var hier = (Hierarchy) LogManager.GetRepository();
            if (hier != null)
            {
                IEnumerable<AdoNetAppender> appenders = hier.GetAppenders().OfType<AdoNetAppender>();

                foreach (AdoNetAppender appender in appenders)
                {
                    appender.ConnectionString =
                        ConfigurationManager.ConnectionStrings[connectionStringKey].ConnectionString;
                    appender.ActivateOptions();
                }
            }
        }

        protected void Application_Start()
        {
            InitializeLogging();

            SetAdoNetAppenderConnectionStrings("AtomicCms");
            StructureMapRegistration.RegisterAll();

            AreaRegistration.RegisterAllAreas();
            RegisterRoutes(RouteTable.Routes);
            ViewEngines.Engines.Clear();
            ViewEngines.Engines.Add(new CustomRazorViewEngine());
            ViewEngines.Engines.Add(new CustomWebFormViewEngine());

            ControllerBuilder.Current.SetControllerFactory(new AtomicCmsControllerFactory());
        }

        private static void InitializeLogging()
        {
            var configFile = new FileInfo(HttpContext.Current.Server.MapPath("log4net.config"));
            XmlConfigurator.ConfigureAndWatch(configFile);
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            OpenSessionInView();
            SeoRedirects();
        }

        private void OpenSessionInView()
        {
            string path = Context.Request.Url.AbsolutePath;
            if (IgnoreExtension(path))
            {
                return;
            }

            ManagedWebSessionContext.Bind(Context,
                                          SessionManager.SessionFactory.OpenSession());
        }

        private static bool IgnoreExtension(string path)
        {
            return path.EndsWith(".css", StringComparison.InvariantCultureIgnoreCase) ||
                   path.EndsWith(".js", StringComparison.InvariantCultureIgnoreCase) ||
                   path.EndsWith(".png", StringComparison.InvariantCultureIgnoreCase) ||
                   path.EndsWith(".jpg", StringComparison.InvariantCultureIgnoreCase) ||
                   path.EndsWith(".gif", StringComparison.InvariantCultureIgnoreCase) ||
                   path.EndsWith(".htm", StringComparison.InvariantCultureIgnoreCase);
        }

        private void CloseSessionInView()
        {
            string path = Context.Request.Url.AbsolutePath;
            if (IgnoreExtension(path))
            {
                return;
            }

            ISession session = ManagedWebSessionContext.Unbind(Context,
                                                               SessionManager.SessionFactory);
            if (session != null)
            {
                if (session.Transaction != null &&
                    session.Transaction.IsActive)
                {
                    session.Transaction.Rollback();
                }

                session.Close();
            }
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            CloseSessionInView();
        }

        private void SeoRedirects()
        {
            if (Request.HttpMethod.Equals("POST",
                                          StringComparison.InvariantCultureIgnoreCase))
            {
                // seo rules can be applyed only to GET requests
                return;
            }

            string absolutePath = HttpContext.Current.Request.Url.AbsolutePath;
            string query = HttpContext.Current.Request.Url.Query;

            string url = HttpContext.Current.Request.Url.ToString();


            if (RemoveDoubleSlashes(absolutePath))
            {
                PermanentRedirect(url.Replace("//",
                                              "/") + query);
            }

            if (AddTrailingSlash(absolutePath))
            {
                PermanentRedirect(url + "/" + query);
            }
        }

        public bool RemoveDoubleSlashes(string absolutePath)
        {
            // If we have double-slashes, strip them out
            if (absolutePath.Contains("//"))
            {
                return true;
            }

            return false;
        }

        public void PermanentRedirect(string url)
        {
            HttpResponse response = HttpContext.Current.Response;
            response.PermanentRedirect(url);
        }

        public bool AddTrailingSlash(string absolutePath)
        {
            absolutePath = absolutePath.NullSafe();
            return !absolutePath.Contains(".") && !absolutePath.EndsWith("/");
        }
    }
}