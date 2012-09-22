using System.Collections.Generic;
using System.Web.Mvc;
using AtomicCms.Common.Entities;
using AtomicCms.Services;

namespace AtomicCms.Web.Areas.Admin.Controllers
{
    [Authorize]
    public class ServiceController : Controller
    {
        private readonly TagService _tagService;

        public ServiceController(TagService tagService)
        {
            _tagService = tagService;
        }

        public JsonResult SuggestTag(string id)
        {
            ICollection<CmsTag> tags = _tagService.Find(id);
            return Json(tags, JsonRequestBehavior.AllowGet);
        }
    }
}