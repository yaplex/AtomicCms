namespace AtomicCms.Web.Controllers
{
    using System.ServiceModel.Syndication;
    using System.Web.Mvc;
    using Common.Entities;
    using Core;
    using Core.ActionResults;
    using Core.Mvc;
    using Services;
    using Services.Concrete;

    public class SyndicationController : AtomicCmsController
    {
        private readonly SyndicationService _syndicationService;
        private readonly SeoService seoService;

        public SyndicationController(SyndicationService _syndicationService, SeoService seoService)
        {
            this._syndicationService = _syndicationService;
            this.seoService = seoService;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        [OutputCache(CacheProfile = "Syndication")]
        public ActionResult Sitemap()
        {
            Sitemap sitemap = this._syndicationService.CreateSitemap(base.GenerateEntryUrl, GetWebsiteUrl());
            return new SitemapResult(sitemap);
        }

        [OutputCache(CacheProfile = "Syndication")]
        public ActionResult Rss()
        {
            SyndicationFeed feed = this.GetSindicationFeed();
            return new SyndicationActionResult(
                new Rss20FeedFormatter(feed));
        }

        [OutputCache(CacheProfile = "Syndication")]
        public ActionResult Atom()
        {
            SyndicationFeed feed = this.GetSindicationFeed();
            return new SyndicationActionResult(
                new Atom10FeedFormatter(feed));
        }

        private SyndicationFeed GetSindicationFeed()
        {
            string url = GetWebsiteUrl();
            return this._syndicationService.BuildFeed(url,
                                                        base.GenerateEntryUrl);
        }

        public ContentResult GenerateAlias(string source)
        {
            return new ContentResult {Content = this.seoService.CreateAlias(source)};
        }
    }
}