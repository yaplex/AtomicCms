using System;
using System.Collections.Generic;
using System.Linq;
using AtomicCms.Common.Constants;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Exceptions;
using AtomicCms.Common.Extensions;
using AtomicCms.Common.IDataContext;
using AtomicCms.Common.Logging;
using AtomicCms.Common.Poco;
using AtomicCms.Data.Abstract;

namespace AtomicCms.Services
{
    public class PageService
    {
        private readonly IAtomicCmsDataRepository _dataContext;
        private readonly LoggingService log;
        private readonly IPageData pageData;
        private readonly ISettingData settingData;
        private readonly IUserData userData;

        public PageService(IPageData pageData, ISettingData settingData, LoggingService log, IUserData userData,
                           IAtomicCmsDataRepository dataContext)
        {
            this.pageData = pageData;
            this.settingData = settingData;
            this.log = log;
            this.userData = userData;
            _dataContext = dataContext;
        }

        public CmsPage Load(int id)
        {
            try
            {
                return pageData.Load(id);
            }
            catch (Exception ex)
            {
                log.Warn(string.Format("Page not found: id={0}", id));
                log.Exception(ex);
                throw new PageNotFoundException("The requested page was not found.");
            }
        }

        public CmsPage LoadDefault()
        {
            try
            {
                CmsSetting defaultSetting = settingData.Get(Constant.Settings.DefaultPageId);
                return Load(defaultSetting.GetIntValue());
            }
            catch (Exception ex)
            {
                log.Warn(ex.Message);
                return pageData.LoadAll().FirstOrDefault();
            }
        }

        public IEnumerable<CmsPage> LoadAll()
        {
            return pageData.LoadAll().OrderByDescending(x => x.ModifiedAt).ToList();
        }

        public IEnumerable<CmsPage> LoadAllPublished()
        {
            return pageData.LoadAllPublished().OrderByDescending(x => x.ModifiedAt).ToList();
        }

        public IEnumerable<CmsPage> LoadLastCreated()
        {
            int numberOfLastPageToLoad = 10;
            try
            {
                CmsSetting lastCreated = settingData.Get(Constant.Settings.LastCreated);
                if (lastCreated != null)
                {
                    numberOfLastPageToLoad = lastCreated.GetIntValue();
                }
            }
            catch (Exception ex)
            {
                log.Info(ex.Message);
            }

            IEnumerable<CmsPage> lastPages = pageData.LoadLast(numberOfLastPageToLoad);
            int defaultPageid = LoadDefault().Id;
            lastPages = lastPages.Where(x => x.Id != defaultPageid);
            return lastPages.ToList();
        }

        public IEnumerable<CmsPage> GetPagesWithTag(string tag)
        {
            return _dataContext.GetPagesWithTag(tag);
        }

        public void Save(CmsPage entry, string identity)
        {
            entry.ModifiedAt = DateTime.Now;
            FillTags(entry);
            EnsureFieldsAreFilled(entry);
            entry.Author = userData.Find(identity);
            pageData.Save(entry);
        }

        public void CreateEntry(CmsPage entry, string userName)
        {
            entry.ModifiedAt = DateTime.Now;
            entry.CreatedAt = DateTime.Now;
            entry.Author = userData.Find(userName);
            EnsureFieldsAreFilled(entry);
            pageData.Save(entry);
        }

        public void Delete(int id)
        {
            pageData.Delete(id);
        }

        private void EnsureFieldsAreFilled(CmsPage entry)
        {
            if (string.IsNullOrEmpty(entry.SeoTitle))
            {
                entry.SeoTitle = entry.PageTitle;
            }

            if (string.IsNullOrEmpty(entry.MetaKeywords))
            {
                entry.MetaKeywords = entry.Tags.ToTagString();
            }

            if (string.IsNullOrEmpty(entry.MetaDescription))
            {
                entry.MetaDescription = entry.PageTitle;
            }
        }

        private void FillTags(CmsPage page)
        {
            if (null == page)
            {
                return;
            }

            page.Tags.Clear();

            if (null != page.TagString && !string.IsNullOrEmpty(page.TagString.AttemptedValue))
            {
                string[] tags = page.TagString.AttemptedValue.Split(new[] {','}, StringSplitOptions.RemoveEmptyEntries);
                foreach (string tag in tags)
                {
                    string tagName = tag.Trim();
                    if (string.IsNullOrEmpty(tagName))
                        continue;
                    CmsTag cmsTag = pageData.LoadTag(tagName);
                    if (null != cmsTag && !page.Tags.Contains(cmsTag))
                    {
                        page.Tags.Add(cmsTag);
                    }
                    else
                    {
                        IEnumerable<CmsTag> alreadyCreated = page.Tags.Where(x => x.Name == tag.Trim());
                        if (alreadyCreated.Count() == 0)
                        {
                            page.Tags.Add(new CmsTag {Name = tag.Trim()});
                        }
                    }
                }
            }
        }

        public IEnumerable<Status> GetPageStatuses()
        {
            return _dataContext.LoadAll<Status>();
        }

        public Status LoadPageType(int pageStatusId)
        {
            return _dataContext.Load<Status>(pageStatusId);
        }
    }
}