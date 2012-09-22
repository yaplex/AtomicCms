using System.Web.Mvc;
using System.Web.Mvc.Html;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Models;

namespace AtomicCms.Web.Core.Extensions.MvcHelpers
{
    public static class PageExtensions
    {
        public static MvcHtmlString ActionPageLink(this HtmlHelper hh, CmsPage p)
        {
            return hh.ActionLink(p.PageTitle, "Content", "Home",
                                 new { id = p.Id, name = p.Alias, area = "" },
                                 new {title = p.PageTitle});
        }
    }
}