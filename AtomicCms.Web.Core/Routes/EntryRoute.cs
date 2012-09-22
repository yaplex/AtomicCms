namespace AtomicCms.Web.Core.Routes
{
    using System.Web;
    using System.Web.Routing;

    public class EntryRoute : Route
    {
        public EntryRoute(string url, IRouteHandler routeHandler) : base(url,
                                                                         routeHandler)
        {
        }

        public EntryRoute(string url, RouteValueDictionary defaults, IRouteHandler routeHandler) : base(url,
                                                                                                        defaults,
                                                                                                        routeHandler)
        {
        }

        public EntryRoute(string url,
                          RouteValueDictionary defaults,
                          RouteValueDictionary constraints,
                          IRouteHandler routeHandler) : base(url,
                                                             defaults,
                                                             constraints,
                                                             routeHandler)
        {
        }

        public EntryRoute(string url,
                          RouteValueDictionary defaults,
                          RouteValueDictionary constraints,
                          RouteValueDictionary dataTokens,
                          IRouteHandler routeHandler) : base(url,
                                                             defaults,
                                                             constraints,
                                                             dataTokens,
                                                             routeHandler)
        {
        }

        /// <summary>
        /// To better seo, add trailing slahes to all urls.
        /// </summary>
        /// <param name="requestContext"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public override VirtualPathData GetVirtualPath(RequestContext requestContext, RouteValueDictionary values)
        {
            VirtualPathData path = base.GetVirtualPath(requestContext,
                                                       values);
            if (path != null)
            {
                path.VirtualPath = VirtualPathUtility.AppendTrailingSlash(path.VirtualPath);
            }

            return path;
        }
    }
}