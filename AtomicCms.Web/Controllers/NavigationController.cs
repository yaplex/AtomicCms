namespace AtomicCms.Web.Controllers
{
    using System.Web.Mvc;
    using Common.Entities;
    using Services.Concrete;

    public class NavigationController : Controller
    {
        private readonly MenuService menuService;

        public NavigationController(MenuService menuService)
        {
            this.menuService = menuService;
        }

        //[OutputCache(CacheProfile = "Menu")]
        public ActionResult Show(string menuName)
        {
            CmsMenu menu = menuService.LoadMenu(menuName);
            return PartialView(
                menuName,
                menu);
        }
    }
}