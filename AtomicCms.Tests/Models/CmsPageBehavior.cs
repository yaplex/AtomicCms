namespace AtomicCms.Tests.Models
{
    using Common.Entities;
    using NUnit.Framework;

    [TestFixture]
    public class CmsPageBehavior
    {

        [Test]
        public void Should_Replace_Space_with_Tilda()
        {
            string parsedTitle = CmsPage.CreateAlias("hello word");
            Assert.AreEqual("hello-word", parsedTitle);
        }

        [Test]
        public void Should_Make_lowercase()
        {
            string parsedTitle = CmsPage.CreateAlias("hELlo wOrd");
            Assert.AreEqual("hello-word", parsedTitle);
        }

        [Test]
        public void Should_Remove_all_Except_letters_and_Numbers()
        {
            string parsedTitle = CmsPage.CreateAlias("hello my !@#$%^&**(_{}[],. 4varite; won't 3234you 4u ");
            Assert.AreEqual("hello-4varite-won-3234you", parsedTitle);
        }

        [Test]
        public void Should_Trim_string()
        {
            string parsedTitle = CmsPage.CreateAlias(" hello word ");
            Assert.AreEqual("hello-word", parsedTitle);
        }

        [Test]
        public void Should_Remove_Words_Less_two_letters()
        {
            string parsedTitle = CmsPage.CreateAlias("hello 4kwn my And I can 4,2-y;% 334 you b43 34 word");
            Assert.AreEqual("hello-4kwn-and-can-334-you-b43-word", parsedTitle);
        }
    }
}