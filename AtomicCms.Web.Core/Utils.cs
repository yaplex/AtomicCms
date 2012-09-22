namespace AtomicCms.Web.Core
{
    using System;
    using System.Configuration;
    using System.Web;

    public class Utils
    {
        private static string _skinName;

        public static string SkinName
        {
            get
            {
                if (!string.IsNullOrEmpty(_skinName))
                {
                    return _skinName;
                }

                _skinName = ConfigurationManager.AppSettings["Skin"];
                return _skinName;
            }
        }

        public static string GetBaseUrl(string applicationPath, Uri url, bool appendTrailingSlash)
        {
            applicationPath = VirtualPathUtility.RemoveTrailingSlash(applicationPath);
            string baseUrl = string.Format("{0}://{1}{2}",
                                           url.Scheme,
                                           url.Authority,
                                           applicationPath);

            if (appendTrailingSlash)
            {
                return VirtualPathUtility.AppendTrailingSlash(baseUrl);
            }

            return VirtualPathUtility.RemoveTrailingSlash(baseUrl);
        }
    }
}