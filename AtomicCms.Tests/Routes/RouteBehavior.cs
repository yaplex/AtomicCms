namespace AtomicCms.Tests.Routes
{
    using System.Web;
    using System.Web.Mvc;
    using System.Web.Routing;
    using Base;
    using Common;
    using NUnit.Framework;
    using Web;
    using Web.Controllers;

    [TestFixture]
    public class RouteBehavior : HttpContextSupport
    {
        #region Setup/Teardown

        [SetUp]
        public void SetUp()
        {
            this.routes = new RouteCollection();
            MvcApplication.RegisterRoutes(this.routes);
        }

        #endregion

        private RouteCollection routes;

        [Test]
        public void Should_Navigate_To_AdminUser_Controller_EditUser_Method()
        {
            HttpContextBase fackeCtx = CreateFackeContext("~/test-CmsPage-32/");
            RouteData routeData = this.routes.GetRouteData(fackeCtx);
            Assert.IsNotNull(routeData,
                             "Route is not defined!");
            Assert.AreEqual("Content",
                            routeData.Values["action"]);
            Assert.AreEqual("Home",
                            routeData.Values["controller"]);
            Assert.AreEqual("32",
                            routeData.Values["id"]);
        }

        [Test]
        public void Shoud_Navigate_to_tag_action()
        {
            HttpContextBase fackeCtx = CreateFackeContext("~/tag/atomiccms/");
            RouteData routeData = this.routes.GetRouteData(fackeCtx);
            Assert.IsNotNull(routeData,
                             "Route is not defined!");
            Assert.AreEqual("Tag",
                            routeData.Values["action"]);
            Assert.AreEqual("Home",
                            routeData.Values["controller"]);
            Assert.AreEqual("atomiccms",
                            routeData.Values["tag"]);
        }
    }
}