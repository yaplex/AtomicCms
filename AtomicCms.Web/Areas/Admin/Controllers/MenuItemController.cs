namespace AtomicCms.Web.Areas.Admin.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web.Mvc;
    using Common.Entities;
    using Core;
    using Services;
    using Services.Concrete;

    [Authorize]
    public class MenuItemController : Controller
    {
        private readonly MenuService menuService;
        private readonly PageService pageService;

        public MenuItemController(MenuService menuService, PageService pageService)
        {
            this.menuService = menuService;
            this.pageService = pageService;
        }

        public ViewResult Edit(int? id)
        {
            IEnumerable<SelectListItem> menuTypes = GetMenuTypes();

            if (null != id)
            {
                CmsMenuItem menuItem = menuService.LoadMenuItem(id.Value);
                if (menuItem.Entry == null)
                {
                    menuItem.Entry = new CmsPage();
                }

                return View(new ViewModelMenuItem
                                {
                                    MenuItem = menuItem,
                                    MenuTypes = menuTypes
                                });
            }

            // load empty screen
            return View(new ViewModelMenuItem
                            {
                                MenuItem = new CmsMenuItem(),
                                MenuTypes = menuTypes
                            });
        }


        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int? id, FormCollection forms)
        {
            IEnumerable<SelectListItem> menuTypes = GetMenuTypes();
            var vm = new ViewModelMenuItem
                         {
                             MenuTypes = menuTypes
                         };

            if (id == null)
            {
                return CreateNewMenuItem(vm, menuTypes, forms);
            }

            vm.MenuItem = menuService.LoadMenuItem(id.Value);
            int newId;
            int prevId = 0;
            if (null != vm.MenuItem.Entry)
            {
                prevId = vm.MenuItem.Entry.Id;
            }

            UpdateModel(vm.MenuItem, "MenuItem", new[] {"Id", "CreatedAt", "MenuId", "Title", "NavigateUrl", "Visible"},
                        forms.ToValueProvider());

            bool isExternal = false;
            bool.TryParse(Request.Form.GetValues("MenuItem.IsExternalUrl")[0], out isExternal);
            if (isExternal)
            {
                vm.MenuItem.Entry = null;
            }
            else
            {
                vm.MenuItem.NavigateUrl = string.Empty;
            }

            if (Int32.TryParse(forms["MenuItem.Entry.Id"], out newId) && newId != prevId)
            {
                vm.MenuItem.Entry = pageService.Load(newId);
                menuService.SaveMenuItem(vm.MenuItem);
            }
            else
            {
                menuService.SaveMenuItem(vm.MenuItem);
            }

            TempData["SuccessResult"] = "MenuItem was successfully updated";

            return RedirectToAction("Edit",
                                    "MenuItem",
                                    new {id = vm.MenuItem.Id});
        }

        private RedirectToRouteResult CreateNewMenuItem(ViewModelMenuItem vm, IEnumerable<SelectListItem> menuTypes,
                                                        FormCollection forms)
        {
            vm.MenuItem = new CmsMenuItem();

            TryUpdateModel(vm, forms.ToValueProvider());
            menuService.SaveMenuItem(vm.MenuItem);
            TempData["SuccessResult"] = "MenuItem was successfully created";
            return RedirectToAction("Edit",
                                    "MenuItem",
                                    new {id = vm.MenuItem.Id});
        }

        private IEnumerable<SelectListItem> GetMenuTypes()
        {
            IEnumerable<CmsMenu> menues = menuService.LoadMenues();
            return menues.Select(menu => new SelectListItem {Text = menu.Type, Value = menu.Id.ToString()}).ToList();
        }
    }
}