using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using AtomicCms.Common.Entities;
using AtomicCms.Common.IDataContext;
using AtomicCms.Common.Logging;
using AtomicCms.Common.Models;
using AtomicCms.Services;
using AtomicCms.Web.Controllers;
using Moq;
using NUnit.Framework;

namespace AtomicCms.Tests.Controllers
{
    [TestFixture]
    internal class WidgetControllerBehavior
    {
        [Test]
        public void Should_Return_Collection()
        {
            var dataContext = new Mock<IAtomicCmsDataRepository>();
            var logger = new Mock<LoggingService>();
            ICollection<PageTag> pagesTagsCollection = new List<PageTag>();
            CmsPage page1 = new CmsPage(){Id = 1};
            CmsPage page2 = new CmsPage(){Id = 2};
            CmsPage page3 = new CmsPage(){Id = 3};
            CmsTag tag1 = new CmsTag() { Id = 1 };
            CmsTag tag2 = new CmsTag() { Id = 2 };
            CmsTag tag3 = new CmsTag() { Id = 3 };
            pagesTagsCollection.Add(new PageTag(){Page = page1, Tag = tag1});
            pagesTagsCollection.Add(new PageTag() { Page = page1, Tag = tag2 });
            pagesTagsCollection.Add(new PageTag() { Page = page2, Tag = tag1 });
            pagesTagsCollection.Add(new PageTag() { Page = page2, Tag = tag3 });
            pagesTagsCollection.Add(new PageTag() { Page = page3, Tag = tag1 });
            pagesTagsCollection.Add(new PageTag() { Page = page3, Tag = tag2 });
            dataContext.Setup(x => x.GetPagesTags()).Returns(pagesTagsCollection);
            WidgetService widgetService = new WidgetService(dataContext.Object, logger.Object);
            var c = new WidgetsController(widgetService);
            ActionResult ar = c.TagCloud();
            var view = ar as PartialViewResult;
            Assert.IsNotNull(view);
            Assert.IsNotEmpty((ICollection) view.ViewData.Model);
            ICollection<TagCount> tagCounts = view.ViewData.Model as ICollection<TagCount>;
            Assert.IsNotNull(tagCounts);
            Assert.AreEqual(3, tagCounts.Count);
            Assert.AreEqual(3, new List<TagCount>(tagCounts)[0].Count);
            Assert.AreEqual(2, new List<TagCount>(tagCounts)[1].Count);
            Assert.AreEqual(1, new List<TagCount>(tagCounts)[2].Count);
        }

        
    }
}