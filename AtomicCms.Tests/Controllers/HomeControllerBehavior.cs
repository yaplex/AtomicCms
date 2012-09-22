using System.Web.Mvc;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Logging;
using AtomicCms.Data.Abstract;
using AtomicCms.Services.Concrete;
using AtomicCms.Web.Controllers;
using AtomicCms.Web.Core.Mvc;
using Moq;
using NHibernate;
using NUnit.Framework;

namespace AtomicCms.Tests.Controllers
{
    using Common.Adapters;
    using Services;

    [TestFixture]
    public class HomeControllerBehavior
    {
        #region Setup/Teardown

        [SetUp]
        public void Setup()
        {
            pageData = new Mock<IPageData>();
            var settingData = new Mock<ISettingData>();
            var log = new Mock<LoggingService>();
            var userData = new Mock<IUserData>();
            var configurationManager = new Mock<IConfigurationAdapter>();


            SettingService settingService = new SettingService(settingData.Object, configurationManager.Object);

            PageService pageService = new PageService(pageData.Object, settingData.Object, log.Object,
                                                       userData.Object, null);

            c = new HomeController(pageService, settingService, log.Object);
        }

        #endregion

        private Mock<IPageData> pageData;

        private HomeController c;

        [Test]
        public void Should_Permanent_redirect_if_wrong_alias_provided_for_page_id()
        {
            int pageId = 3;
            var expectedPage = new CmsPage {Id = pageId, Alias = "expected-alias"};
            pageData.Setup(x => x.Load(pageId)).Returns(expectedPage);
            var result = c.Content(pageId, "this-is-wrong_alias") as LegacyUrl301Result;
            Assert.IsNotNull(result);
            string expectedUrl = expectedPage.GetUrl();
            Assert.AreEqual(expectedUrl, result.NewUrl);
        }

        [Test]
        public void Should_Throw_Exception_If_Page_Not_Found()
        {
            const int pageId = 999;

            pageData.Setup(x => x.Load(pageId)).Throws(new ObjectNotFoundException(pageId, "CmsPage"));
            var result = c.Content(pageId, "any string") as RedirectToRouteResult;
            Assert.IsNotNull(result);
        }
    }
}