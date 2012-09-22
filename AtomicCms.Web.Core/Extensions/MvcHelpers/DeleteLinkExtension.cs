namespace AtomicCms.Web.Core.Extensions.MvcHelpers
{
    using System.Collections.Generic;
    using System.Web.Mvc;
    using System.Web.Mvc.Html;
    using System.Web.Routing;

    public static class DeleteLinkExtension
    {
        public static MvcHtmlString DeleteLink(this HtmlHelper helper, string text, string action, string controller,
                                               object routeValues,
                                               object htmlAttributes)
        {
            return DeleteLink(helper, text, action, controller, new RouteValueDictionary(routeValues),
                              new RouteValueDictionary(htmlAttributes));
        }

        public static MvcHtmlString DeleteLink(this HtmlHelper helper, string text, string action, string controller,
                                               RouteValueDictionary routeValues,
                                               IDictionary<string, object> htmlAttributes)
        {
            if (htmlAttributes != null && !htmlAttributes.ContainsKey("onclick"))
            {
                htmlAttributes.Add("onclick", "deletePost(this.href); return false;");
            }

            return helper.ActionLink(text, action, controller, routeValues, htmlAttributes);
        }
    }
}