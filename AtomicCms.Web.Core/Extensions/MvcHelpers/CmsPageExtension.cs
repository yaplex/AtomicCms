namespace AtomicCms.Web.Core.Extensions.MvcHelpers
{
    using System;
    using System.Web.Mvc;
    using System.Web.Mvc.Html;
    using Common.Entities;

    public static class CmsPageExtension
    {
        public static MvcHtmlString PageLink(this HtmlHelper helper, CmsPage page, object htmlAttributes)
        {
            return PageLink(helper, null, page, htmlAttributes);
        }

        public static MvcHtmlString PageLink(this HtmlHelper helper, string linkText, CmsPage page,
                                             object htmlAttributes)
        {
            return helper.ActionLink(linkText ?? page.PageTitle, "Content", "Home",
                                     new {area = "", id = page.Id, name = page.Alias}, htmlAttributes);
        }

        public static string PageUrl(this UrlHelper helper, CmsPage page)
        {
            var context = helper.RequestContext.HttpContext;
            return Utils.GetBaseUrl(context.Request.ApplicationPath, context.Request.Url, false) +
                   helper.Action("Content", "Home", new {area = "", id = page.Id, name = page.Alias});
        }

        public static string SiteUrl(this UrlHelper helper)
        {
            var context = helper.RequestContext.HttpContext;
            return Utils.GetBaseUrl(context.Request.ApplicationPath, context.Request.Url, true);
        }

        public static string PageLink(this HtmlHelper helper, CmsPage page)
        {
            if (null != page)
            {
                return page.GetUrl();
            }

            return string.Empty;
        }

        public static bool IsDefaultPage(this HtmlHelper helper)
        {
            return
                "Home".Equals(helper.ViewContext.RouteData.GetRequiredString("controller"),
                              StringComparison.InvariantCultureIgnoreCase) &&
                "Default".Equals(helper.ViewContext.RouteData.GetRequiredString("action"),
                                 StringComparison.InvariantCultureIgnoreCase);
        }
    }
}