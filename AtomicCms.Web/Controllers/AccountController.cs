namespace AtomicCms.Web.Controllers
{
    using System;
    using System.Threading;
    using System.Web.Mvc;
    using System.Web.Security;
    using Common.Entities;
    using Services;
    using Services.Concrete;

    [HandleError]
    public class AccountController : Controller
    {
        private readonly UserService userService;

        public AccountController(UserService userService)
        {
            this.userService = userService;
        }

        public ActionResult LogOn()
        {
            return View();
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult LogOn(string userName, string password, bool rememberMe, string returnUrl)
        {
            if (!this.IsCredentialValid(userName, password))
            {
                return View();
            }

            FormsAuthentication.SetAuthCookie(userName, rememberMe);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                return Redirect(returnUrl);
            }

            return RedirectToAction("Index",
                                    "Dashboard", new {area = "Admin"});
        }

        private void InvalidLogin(string message)
        {
            TempData["loginValidation"] = message;
        }

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Default",
                                    "Home");
        }

        #region Validation Methods

        private bool IsCredentialValid(string userName, string password)
        {
            if (String.IsNullOrEmpty(userName))
            {
                this.InvalidLogin("username can't be empty.");
                return false;
            }
            if (String.IsNullOrEmpty(password))
            {
                this.InvalidLogin("password can't be empty.");
                return false;
            }
            if (!this.IsPasswordValid(userName, password))
            {
                this.InvalidLogin("user/password combination wrong");
                Thread.Sleep(5000);
                return false;
            }

            return true;
        }

        private bool IsPasswordValid(string userName, string password)
        {
            CmsUser user = this.userService.Login(userName, password);
            if (null != user)
            {
                return user.IsValid;
            }

            return false;
        }

        #endregion
    }
}