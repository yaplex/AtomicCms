namespace AtomicCms.Web.Areas.Admin.Controllers
{
    using System.Web.Mvc;
    using Common.Entities;
    using Core.Extensions;
    using Services.Concrete;

    [Authorize]
    public class MenuController : Controller
    {
        private readonly MenuService menuService;

        public MenuController(MenuService menuService)
        {
            this.menuService = menuService;
        }

        public ActionResult List()
        {
            return View(this.menuService.LoadMenues());
        }

        private ActionResult CreateNewMenu(CmsMenu menu)
        {
            this.menuService.SaveMenu(menu);
            TempData["SuccessResult"] = string.Format("Menu was successfully created with Id = {0}",
                                                   menu.Id);
            return RedirectToAction("Edit",
                                    "Menu",
                                    new {id = menu.Id});
        }

        public ViewResult Edit(int? id)
        {
            if (null != id)
            {
                CmsMenu menu = this.menuService.LoadMenu(id.Value);
                return View(menu);
            }

            return View(new CmsMenu());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection forms)
        {
            if (id == 0)
            {
                CmsMenu newMenu = new CmsMenu()
                                   {
                                       Title = forms.GetValue("Title").AttemptedValue,
                                       Description = forms.GetValue("Description").AttemptedValue,
                                       Type = forms.GetValue("Type").AttemptedValue
                                   };
                if (newMenu.IsValid)
                {
                    return this.CreateNewMenu(newMenu);
                }

                ModelState.AddModelErrors(newMenu.GetRuleViolations());
                return View(newMenu);
            }

            CmsMenu menu = this.menuService.LoadMenu(id);
            UpdateModel(menu, forms.ToValueProvider());
            this.menuService.SaveMenu(menu);
            TempData["SuccessResult"] = "Menu was successfully saved";
            return this.View(menu);
        }
    }
}