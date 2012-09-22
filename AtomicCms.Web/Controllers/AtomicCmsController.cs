namespace AtomicCms.Web.Controllers
{
    using System.Web;
    using System.Web.Mvc;
    using System.Web.Routing;
    using Common.Entities;
    using Core;

    public class AtomicCmsController : Controller
    {
        protected string GetWebsiteUrl()
        {
            HttpRequestBase request = HttpContext.Request;

            return Utils.GetBaseUrl(
                request.ApplicationPath,
                request.Url,
                true);
        }

        public static RouteValueDictionary GetRouteValues(CmsPage entry)
        {
            if (null == entry)
            {
                return new RouteValueDictionary();
            }

            return new RouteValueDictionary(new {id = entry.Id, name = entry.Alias});
        }

        protected string GenerateEntryUrl(CmsPage entry)
        {
            return VirtualPathUtility.RemoveTrailingSlash(this.GetWebsiteUrl()) +
                   Url.Action("Content", "Home", GetRouteValues(entry));
        }
    }
}