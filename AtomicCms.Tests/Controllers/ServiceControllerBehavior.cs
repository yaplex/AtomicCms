using System.Collections;
using System.Collections.Generic;
using System.Web.Mvc;
using AtomicCms.Common.Data;
using AtomicCms.Common.Entities;
using AtomicCms.Common.IDataContext;
using AtomicCms.Services;
using AtomicCms.Web.Areas.Admin.Controllers;
using Moq;
using NUnit.Framework;

namespace AtomicCms.Tests.Controllers
{
    [TestFixture]
    public class ServiceControllerBehavior
    {
        #region Setup/Teardown

        [SetUp]
        public void Setup()
        {
            CreateSetupData();
            _mockRepository = new Mock<IAtomicCmsDataRepository>();
            _mockRepository.Setup(x => x.Find<CmsTag>(It.IsAny<Query>())).Returns(_expectedCollection);

            c = new ServiceController(new TagService(_mockRepository.Object));
        }

        private void CreateSetupData()
        {
            int id = 1;
            _expectedCollection.Add(new CmsTag() {Name = "asp.net", Id = id++});
            _expectedCollection.Add(new CmsTag() {Name = "aspargus", Id = id++});
            _expectedCollection.Add(new CmsTag() {Name = "massage", Id = id++});
        }

        #endregion

        private readonly ICollection<CmsTag> _expectedCollection = new List<CmsTag>();

        private ServiceController c;
        private Mock<IAtomicCmsDataRepository> _mockRepository;

        [Test]
        public void ShouldConsiderOnlyTheLastTag()
        {
            JsonResult r = c.SuggestTag("hello, world,test,mes");
            _mockRepository.Verify(
               x => x.Find<CmsTag>(It.Is<Query>(
                   y => y.Criterias[0].Value == "mes" && y.Criterias.Count == 1
                                       )), Times.Exactly(1));
        }


        [Test]
        public void ShouldReturnEmptyIfOnlyOneLetter()
        {
            JsonResult r = c.SuggestTag("a");
            var suggestedTags = r.Data as ICollection<CmsTag>;
            Assert.IsEmpty((ICollection) suggestedTags);
            _mockRepository.Verify(x => x.Find<CmsTag>(It.IsAny<Query>()), Times.Never());
        }

        [Test]
        public void ShouldSuggestTag()
        {
            JsonResult r = c.SuggestTag("as");
            var suggestedTags = r.Data as ICollection<CmsTag>;
            Assert.IsNotEmpty((ICollection) suggestedTags);
            _mockRepository.Verify(
                x => x.Find<CmsTag>(It.Is<Query>(
                    y => y.Criterias[0].Value == "as" && y.Criterias.Count == 1
                                        )));
        }
    }
}