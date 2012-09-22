namespace AtomicCms.Services
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using Common.Entities;
    using Common.IDataContext;
    using Common.Logging;
    using Common.Models;

    public class WidgetService
    {
        private readonly IAtomicCmsDataRepository _dataContext;
        private readonly LoggingService _log;

        public WidgetService(IAtomicCmsDataRepository dataContext, LoggingService log)
        {
            _dataContext = dataContext;
            _log = log;
        }

        public IList<TagCount> GetTagCounts()
        {
            try
            {
                IEnumerable<PageTag> pagesTags = _dataContext.GetPagesTags();
                IEnumerable<IGrouping<CmsTag, PageTag>> groupedTagsPages = from pt in pagesTags
                                                                           group pt by pt.Tag
                                                                           into g
                                                                           select g;
                var groupedTagsCount = from rr in groupedTagsPages
                                       select new {Tag = rr.Key, Count = rr.Count()};

                var tagCount = new List<TagCount>(groupedTagsCount.Count());
                tagCount.AddRange(
                    groupedTagsCount.Select(pageTags => new TagCount {Tag = pageTags.Tag, Count = pageTags.Count}));

                return tagCount;
            }
            catch (Exception ex)
            {
                _log.Exception(ex);
                throw;
            }
        }
    }
}