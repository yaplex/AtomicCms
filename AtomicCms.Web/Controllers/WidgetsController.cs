namespace AtomicCms.Web.Controllers
{
    using System.Collections.Generic;
    using System.Web.Mvc;
    using Common.Models;
    using Services;

    public class WidgetsController : Controller
    {
        private readonly WidgetService _service;

        public WidgetsController(WidgetService service)
        {
            _service = service;
        }

        //
        // GET: /Widgets/

        public ActionResult TagCloud()
        {
            IList<TagCount> tagCounts = _service.GetTagCounts();
            return PartialView(tagCounts);
        }
    }
}