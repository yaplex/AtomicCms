namespace AtomicCms.Web.Core.Mvc
{
    using System.Web;
    using System.Web.Mvc;
    using Extensions;

    public class LegacyUrl301Result : ActionResult
    {
        public LegacyUrl301Result(string redirectTo)
        {
            this.NewUrl = redirectTo;
        }

        public string NewUrl { get; private set; }

        public override void ExecuteResult(ControllerContext context)
        {
            HttpResponseBase response = context.RequestContext.HttpContext.Response;
            var httpContext = context.RequestContext.HttpContext;
            response.PermanentRedirect(Utils.GetBaseUrl(httpContext.Request.ApplicationPath, httpContext.Request.Url, true) + this.NewUrl);
        }
    }
}