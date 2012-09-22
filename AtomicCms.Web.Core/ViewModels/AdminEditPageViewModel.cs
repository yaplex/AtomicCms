using System.Collections.Generic;
using System.Web.Mvc;
using AtomicCms.Common.Entities;

namespace AtomicCms.Web.Core.ViewModels
{
    public class AdminEditPageViewModel
    {
        public CmsPage Page { get; set; }
        public IEnumerable<SelectListItem> PageStatuses { get; set; }
    }
}