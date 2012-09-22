using System.Web.Mvc;
using System.Web.Mvc.Html;
using AtomicCms.Common.Entities;

namespace AtomicCms.Web.Core.Extensions.MvcHelpers
{
    public static class TemplateHelperExtensions
    {
        public static MvcHtmlString PageTitle(this HtmlHelper hh, CmsPage page)
        {
            if (hh.IsDefaultPage())
            {
                return MvcHtmlString.Create(page.PageTitle);
            }

            return hh.ActionLink(page.PageTitle,
                                 "Content",
                                 "Home",
                                 new {area = "", id = page.Id, name = page.Alias},
                                 new {title = page.PageTitle});
        }
    }
}