using System;
using System.Collections.Generic;
using System.Web.Mvc;
using AtomicCms.Common.Attributes;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Exceptions;
using AtomicCms.Common.Logging;
using AtomicCms.Web.Core.Mvc;
using AtomicCms.Web.Core.ViewModels;

namespace AtomicCms.Web.Controllers
{
    using Services;

    //[HandleError]
    [SupportSkin]
    public class HomeController : AtomicCmsController
    {
        private readonly LoggingService log;
        private readonly PageService pageService;
        private readonly SettingService settingService;

        public HomeController(PageService pageService, SettingService settingService, LoggingService log)
        {
            this.pageService = pageService;
            this.settingService = settingService;
            this.log = log;
        }

        public ActionResult Default()
        {
            CmsPage defaultPage = pageService.LoadDefault();
            return ShowPage("StartPage", defaultPage);
        }

        [OutputCache(CacheProfile = "Page")]
        public ActionResult Content(int id, string name)
        {
            try
            {
                CmsPage page = pageService.Load(id);
                if (page.Alias.ToUpper().Equals(name.ToUpper()))
                {
                    return ShowPage(page);
                }
                else
                {
                    log.Warn(string.Format("301 redirect: pageId={0}, alias={1}", id, name));
                    return new LegacyUrl301Result(page.GetUrl());
                }
            }
            catch (PageNotFoundException ex)
            {
                log.Exception(ex);
                return RedirectToAction("NotFound", "Error");
            }
            catch (Exception ex)
            {
                log.Exception(ex);
                throw;
            }
        }

        private ActionResult ShowPage(string page, CmsPage entry)
        {
            return View(page, entry);
        }

        private ActionResult ShowPage(CmsPage entry)
        {
            return View("Index", entry);
        }


        //[OutputCache(CacheProfile = "Page")]
        public PartialViewResult LastPages()
        {
            IEnumerable<CmsPage> lastCreated = pageService.LoadLastCreated();
            return PartialView("LastPages",
                               lastCreated);
        }

        public ViewResult Tag(string tag)
        {
            IEnumerable<CmsPage> matchedPages = pageService.GetPagesWithTag(tag);
            return View(new TagViewModel {Pages = matchedPages, Tag = tag});
        }

        
        [OutputCache(Duration = 600)]
        public string Version()
        {
            string version = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString();
            return version;
        }
    }
}