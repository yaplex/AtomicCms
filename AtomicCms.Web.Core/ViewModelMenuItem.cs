namespace AtomicCms.Web.Core
{
    using System.Collections.Generic;
    using System.Web.Mvc;
    using Common.Entities;

    public class ViewModelMenuItem
    {
        public CmsMenuItem MenuItem { get; set; }
        public IEnumerable<SelectListItem> MenuTypes { get; set; }
    }
}