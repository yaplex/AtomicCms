namespace AtomicCms.Web.Core.Extensions
{
    using System.Web.Mvc;

    public static class LocalizationExtensions
    {
        public static string Resource(this HtmlHelper htmlhelper,
                                      string classKey,
                                      string resourceKey)

        {
            object resourceValue = htmlhelper.ViewContext.HttpContext.GetGlobalResourceObject(classKey, resourceKey);
            if (null != resourceValue)
            {
                return resourceValue.ToString();
            }

            return string.Empty;
        }
    }
}