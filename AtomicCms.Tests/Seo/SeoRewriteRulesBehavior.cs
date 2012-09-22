namespace AtomicCms.Tests.Seo
{
    using NUnit.Framework;
    using Web;

    [TestFixture]
    public class SeoRewriteRulesBehavior
    {
        #region Setup/Teardown

        [SetUp]
        public void SetUp()
        {
        }

        #endregion

        [Test]
        public void Should_add_trailing_slash_to_path_without_extension()
        {
            MvcApplication app = new MvcApplication();
            bool shouldRedirect = app.AddTrailingSlash("/my-cool-CmsPage");
            Assert.IsTrue(shouldRedirect);
        }

        [Test]
        public void Should_not_add_trailing_slahes_if_contains_one()
        {
            MvcApplication app = new MvcApplication();
            bool shouldRedirect = app.AddTrailingSlash("/my-cool-CmsPage/");
            Assert.IsFalse(shouldRedirect);
        }

[Test]
        public void Should_add_slash_if_url_is_null_or_empty()
        {
            MvcApplication app = new MvcApplication();
            bool shouldRedirect = app.AddTrailingSlash(null);
            Assert.IsTrue(shouldRedirect);
        }

[Test]
        public void Should_not_add_slash_if_url_is_slash()
        {
            MvcApplication app = new MvcApplication();
            bool shouldRedirect = app.AddTrailingSlash("/");
            Assert.IsFalse(shouldRedirect);
        }



        [Test]
        public void Should_not_add_trailing_slash_to_css_files()
        {
            MvcApplication app = new MvcApplication();
            bool shouldRedirect = app.AddTrailingSlash("/skins/styles/style.css");

            Assert.IsFalse(shouldRedirect);
        }

        [Test]
        public void Should_not_add_trailing_slash_to_urls_ended_with_files()
        {
            MvcApplication app = new MvcApplication();
            bool shouldRedirect = app.AddTrailingSlash("/default.aspx");

            Assert.IsFalse(shouldRedirect);
        }

        [Test]
        public void Should_remove_double_slashes()
        {
            MvcApplication app = new MvcApplication();
            bool shouldRedirect = app.RemoveDoubleSlashes("//");
            Assert.IsTrue(shouldRedirect);
        }
 
    }
}