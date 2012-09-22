namespace AtomicCms.Web.Areas.Admin.Controllers
{
    using System.Web.Mvc;
    using Common.Entities;
    using Services;
    using Services.Concrete;

    [Authorize]
    public class AccountsController : Controller
    {
        private readonly UserService userService;

        public AccountsController(UserService userService)
        {
            this.userService = userService;
        }

        public ViewResult List()
        {
            return View(this.userService.LoadAll());
        }

        public ViewResult Edit(int? id)
        {
            if (null != id)
            {
                CmsUser user = this.userService.Load(id.Value);
                return View(user);
            }

            return View(new CmsUser());
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(CmsUser user, FormCollection forms)
        {
            user.Password = forms.Get("Password");

            this.userService.Update(user);
            TempData["SuccessResult"] = "Account information was successfully saved";
            return RedirectToAction("Edit", "Accounts", new {id = user.Id});
        }
    }
}