using AtomicCms.Common.Entities;
using AtomicCms.Common.Extensions;
using AtomicCms.Common.Models;
using NUnit.Framework;

namespace AtomicCms.Tests.Extensions
{
    [TestFixture]
    public class TagCountExtensionBehavior
    {
        [Test]
        public void ShouldReturnTag1IfLessOrEqualTo1()
        {
            TagCount tc = new TagCount() {Tag = new CmsTag(), Count = 3};
            Assert.AreEqual("tag1", tc.GetTagClass(1000));
        }

       
        [Test]
        public void ShouldReturnTag6IfLessOrEqualTo30AndGreaterThan18()
        {
            TagCount tc = new TagCount() { Tag = new CmsTag(), Count = 29 };
            Assert.AreEqual("tag5", tc.GetTagClass(100));
            tc = new TagCount() { Tag = new CmsTag(), Count = 20 };
            Assert.AreEqual("tag4", tc.GetTagClass(100));
        }

    }
}