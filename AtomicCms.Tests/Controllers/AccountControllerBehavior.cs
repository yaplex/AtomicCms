namespace AtomicCms.Tests.Controllers
{
    using Common.Entities;
    using Data.Abstract;
    using Moq;
    using NUnit.Framework;
    using Services;
    using Services.Concrete;
    using Web.Controllers;

    [TestFixture]
    public class AccountControllerBehavior
    {
        private AccountController controller;
        private const string invalidLoginKey = "loginValidation";
        private CmsUser alex;
        [SetUp]
        public void SetUp()
        {
            alex = new CmsUser(){Login = "alex", Password = "password"};

            var userData = new Mock<IUserData>();
            userData.Setup(x => x.Login("alex", "password")).Returns(alex);
            UserService userService = new UserService(userData.Object);
            controller = new AccountController(userService);
        }

        [Test]
        public void Should_Notify_if_username_is_empty()
        {
            controller.LogOn("", "test", false, null);
            LoginInvalidNotification();
        }

        private void LoginInvalidNotification()
        {
            Assert.IsNotNull(this.controller.TempData[invalidLoginKey]);
            Assert.IsNotEmpty(this.controller.TempData[invalidLoginKey].ToString());
        }

        [Test]
        public void Should_notify_if_password_is_empty()
        {
            controller.LogOn("test", "", false, null);
            LoginInvalidNotification();
        }

        [Test]
        public void Should_notify_if_login_and_password_are_emtpty()
        {
            controller.LogOn("", "", false, "");
            LoginInvalidNotification();
        }

        [Test]
        public void Should_notify_if_password_is_invalid()
        {
            controller.LogOn("alexander", "wrongPassword", false, null);
            LoginInvalidNotification();
        }
    }
}