namespace AtomicCms.Web.Areas.Admin.Controllers
{
    using System.Web.Mvc;
    using Common.Entities;
    using Services;

    [Authorize]
    public class SettingsController : Controller
    {
        private readonly SettingService settingService;

        public SettingsController(SettingService settingService)
        {
            this.settingService = settingService;
        }

        public ActionResult List()
        {
            return View(this.settingService.LoadAll());
        }

        public ViewResult Edit(int? id)
        {
            if (null != id)
            {
                CmsSetting attr = this.settingService.Load(id.Value);
                return View(attr);
            }
            else
            {
                return View(new CmsSetting());
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        [ValidateInput(false)]
        public ActionResult Edit(CmsSetting attr)
        {
            this.settingService.Update(attr);
            TempData["SuccessResult"] = "Item was successfully updated.";
            return RedirectToAction("Edit",
                                    "Settings",
                                    new {id = attr.Id});
        }
    }
}