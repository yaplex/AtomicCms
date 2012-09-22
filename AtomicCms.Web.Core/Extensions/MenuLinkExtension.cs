namespace AtomicCms.Web.Core.Extensions
{
    using System.Web.Mvc;
    using Common.Entities;

    public static class MenuLinkExtension
    {
        public static string BuildMenuLink(this UrlHelper urlHelper, CmsMenuItem item)
        {
            if (item.IsExternalUrl)
            {
                return item.NavigateUrl;
            }

            return urlHelper.Action("Content",
                                    "Home",
                                    new {id = item.Entry.Id, name = item.Entry.Alias});
        }
    }
}