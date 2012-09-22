namespace AtomicCms.Web.Controllers
{
    using System;
    using System.Web.Mvc;
    using Common.Entities;
    using Common.Logging;
    using Core.Filters;
    using Services;
    using Services.Concrete;

    [HandleError]
    public class ToolsController : Controller
    {
        private readonly LoggingService log;
        private readonly PageService pageService;
        private readonly SettingService settingService;

        public ToolsController(PageService pageService, SettingService settingService, LoggingService log)
        {
            this.pageService = pageService;
            this.settingService = settingService;
            this.log = log;
        }

        [CurrentUserFilter]
        public JsonResult CreateAlias(string title, string userName)
        {
            if (string.IsNullOrEmpty(title))
            {
                title = "invalid value";
            }

            var page = new CmsPage();
            page.PageTitle = title;
            page.Alias = CmsPage.CreateAlias(title);
            pageService.CreateEntry(page, userName);
            return Json(new {alias = page.Alias, id = page.Id});
        }

        [CurrentUserFilter]
        public JsonResult UpdateAlias(int id, string alias, string userName)
        {
            try
            {
                CmsPage page = pageService.Load(id);
                if (null == page || string.IsNullOrEmpty(alias))
                {
                    throw new NullReferenceException("Page was not found, or user input is empty.");
                }

                page.Alias = alias;
                pageService.Save(page, userName);
                return Json(new {alias = page.Alias, id = page.Id});
            }
            catch (Exception ex)
            {
                log.Exception(ex);
                throw;
            }
        }

        public string FreeHtml(string htmlKey)
        {
            return settingService.GetSettingValue(htmlKey, HttpContext.Cache);
        }
    }
}