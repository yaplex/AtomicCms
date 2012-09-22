namespace AtomicCms.Web.Core
{
    using System.Collections.Generic;
    using System.Linq;
    using Common.Entities;

//    public class ViewModelHome
//    {
//        public CmsPage Entry { get; set; }
//        public SiteSettings Attributes { get; set; }
//    }

    public class SiteSettings
    {
        public IEnumerable<CmsSetting> Settings { get; set; }

        public string GetValue(string key)
        {
            var s = this.Settings.Where(x => x.Key == key).FirstOrDefault();
            if (null != s)
            {
                return s.Value;
            }

            return string.Empty;
        }
    }
}