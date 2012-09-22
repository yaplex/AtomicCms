using System;
using System.Collections.Generic;
using System.Web.Mvc;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Poco;
using AtomicCms.Services;
using AtomicCms.Web.Controllers;
using AtomicCms.Web.Core.Extensions;
using AtomicCms.Web.Core.Filters;
using AtomicCms.Web.Core.ViewModels;

namespace AtomicCms.Web.Areas.Admin.Controllers
{
    [Authorize]
    public class CmsPageController : AtomicCmsController
    {
        private readonly PageService pageService;

        public CmsPageController(PageService pageService)
        {
            this.pageService = pageService;
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ViewResult Edit(int? id)
        {
            if (null != id)
            {
                CmsPage entry = pageService.Load(id.Value);
                return View(new AdminEditPageViewModel { Page = entry, PageStatuses = GetStatuses() });
            }

            return View(new AdminEditPageViewModel { Page = new CmsPage(), PageStatuses = GetStatuses() });
        }

        [AcceptVerbs(HttpVerbs.Post)]
        [ValidateInput(false)]
        [CurrentUserFilter]
        public ActionResult Edit(AdminEditPageViewModel vm, FormCollection forms, string userName)
        {
            CmsPage pageFromDb = pageService.Load(vm.Page.Id);

            // workaround: update status should be before update model. It's because of defect in asp.net mvc 2
            UpdatePageStatus(pageFromDb, forms.ToValueProvider());
            UpdateModel(pageFromDb, "Page", forms.ToValueProvider());
            pageFromDb.TagString = forms.GetValue("Tags");
            if (pageFromDb.IsValid)
            {
                pageService.Save(pageFromDb, userName);
                TempData["SuccessResult"] = "Items was successfully saved";
                return RedirectToAction("Edit", new {id = pageFromDb.Id});
            }

            ModelState.AddModelErrors(pageFromDb.GetRuleViolations());

            return View(new AdminEditPageViewModel {Page = pageFromDb, PageStatuses = GetStatuses()});
        }

        private void UpdatePageStatus(CmsPage page, IValueProvider valueProvider)
        {
            int pageStatusId;
            if (Int32.TryParse(valueProvider.GetValue("Page.Status.Id").AttemptedValue, out pageStatusId))
            {
                Status pageStatus = pageService.LoadPageType(pageStatusId);
                page.Status = pageStatus;
            }
        }

        private List<SelectListItem> GetStatuses()
        {
            List<SelectListItem> statuses = new List<SelectListItem>();
            foreach (Status pageStatus in pageService.GetPageStatuses())
            {
                statuses.Add(new SelectListItem{Text = pageStatus.StatusName, Value = pageStatus.Id.ToString()});
            }
            return statuses;
        }

        public ViewResult List()
        {
            IEnumerable<CmsPage> allPages = pageService.LoadAll();
            return View(allPages);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Delete(int id)
        {
            pageService.Delete(id);
            return new EmptyResult();
        }
    }
}