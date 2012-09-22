namespace AtomicCms.Web.Areas.Admin.Controllers
{
    using System.Web.Mvc;

    [Authorize]
    public class DashboardController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
    }
}