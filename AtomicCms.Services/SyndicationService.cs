namespace AtomicCms.Services
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.ServiceModel.Syndication;
    using AtomicCms.Common.Constants;
    using AtomicCms.Common.Entities;
    using AtomicCms.Common.Enumeration;
    using AtomicCms.Data.Abstract;

    public class SyndicationService
    {
        private readonly IPageData pageData;
        private readonly ISettingData settingData;

        public SyndicationService(IPageData pageData, ISettingData settingData)
        {
            this.pageData = pageData;
            this.settingData = settingData;
        }

        public Sitemap CreateSitemap(Func<CmsPage, string> generateEntryUrl, string homePage)
        {
            IEnumerable<CmsPage> entries = pageData.LoadAllPublished();
            int defaultPageId = settingData.Get(Constant.Settings.DefaultPageId).GetIntValue();
            var sitemap = new Sitemap();
            foreach (CmsPage page in entries)
            {
                if (IsDefaultPage(page,
                                  defaultPageId))
                {
                    AddHomePage(sitemap,
                                page,
                                homePage);
                    continue;
                }

                var url = new SitemapUrl();

                url.Location = generateEntryUrl(page);

                url.ChangeFrequency = CalculateFrequency(page.ModifiedAt);
                url.Priority = 0.7;
                url.LastModified = page.ModifiedAt.ToString();
                sitemap.Add(url);
            }

            return sitemap;
        }

        public SyndicationFeed BuildFeed(string websiteUrl, Func<CmsPage, string> generateEntryUrl)
        {
            string rssFeedTitle = settingData.Get(Constant.Settings.SiteLogo).Value;
            string rssFeedDescr = settingData.Get(Constant.Settings.SiteSubLogo).Value;

            IEnumerable<CmsPage> entries = pageData.LoadLast(10);
            List<SyndicationItem> items =
                entries.Select(entry => new SyndicationItem(entry.SeoTitle,
                                                            SyndicationContent.
                                                                CreateHtmlContent(entry.PageContent),
                                                            new Uri(generateEntryUrl(entry)),
                                                            string.Format("item-id-{0}", entry.Id),
                                                            entry.CreatedAt)).ToList();

            return new SyndicationFeed(rssFeedTitle,
                                       rssFeedDescr,
                                       new Uri(websiteUrl),
                                       "syndicationID",
                                       DateTime.Now,
                                       items);
        }

        private void AddHomePage(Sitemap sitemap, CmsPage page, string homePage)
        {
            var url = new SitemapUrl();
            url.Location = homePage;
            url.ChangeFrequency = CalculateFrequency(page.ModifiedAt);
            url.Priority = 0.9;
            url.LastModified = page.ModifiedAt.ToString();
            sitemap.Insert(0,
                           url);
        }

        private bool IsDefaultPage(CmsPage page, int homePageId)
        {
            return page.Id == homePageId;
        }

        private static ChangeFrequency CalculateFrequency(DateTime modifiedAt)
        {
            ChangeFrequency frequency = ChangeFrequency.Hourly;
            if (modifiedAt < DateTime.Now.AddMonths(-12))
            {
                frequency = ChangeFrequency.Yearly;
            }
            else if (modifiedAt < DateTime.Now.AddDays(-60))
            {
                frequency = ChangeFrequency.Monthly;
            }
            else if (modifiedAt < DateTime.Now.AddDays(-14))
            {
                frequency = ChangeFrequency.Weekly;
            }
            else if (modifiedAt < DateTime.Now.AddDays(-2))
            {
                frequency = ChangeFrequency.Daily;
            }
            return frequency;
        }
    }
}