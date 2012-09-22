namespace AtomicCms.Tests.Utils
{
    using Common.Entities;
    using Common.Utils;
    using NUnit.Framework;
    using Web.Controllers;

    [TestFixture]
    public class StrongBehavior
    {
        [Test]
        public void Should_return_name_for_method()
        {
            string homeContent = Strong<HomeController>.Name(x => x.Content(1, "hello"));
            Assert.AreEqual("Content", homeContent);
        }

        [Test]
        public void Should_return_name_for_property()
        {
            string alias = Strong<CmsPage>.Name(x => x.Alias);
            Assert.AreEqual("Alias", alias);
        }

        [Test]
        public void Should_return_poperty_name_for_inherited_property()
        {
            string createdAt = Strong<CmsPage>.Name(x => x.CreatedAt);
            Assert.AreEqual("CreatedAt", createdAt);
        }
    }
}