namespace AtomicCms.Web.Areas.Admin.Controllers
{
    using System.Collections.Generic;
    using System.IO;
    using System.Web;
    using System.Web.Mvc;
    using Core.Configuration;
    using Services;
    using System.Linq;
    using Services.Concrete;

    [Authorize]
    public class FileUploadController : Controller
    {
        private readonly FileUploadService fileUploadService;

        public FileUploadController(FileUploadService fileUploadService)
        {
            this.fileUploadService = fileUploadService;
        }

        //
        // GET: /FileUpload/

        public ActionResult List()
        {
            string folder = string.Format("{0}{1}/",
                                          Server.MapPath("~/"),
                                          Configuration.UploadsFolder);
            IEnumerable<FileInfo> files = this.fileUploadService.GetFiles(folder);
            files = files.OrderByDescending(x => x.CreationTime).ToList();
            return View(files);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UploadFile(FormCollection forms)
        {
            HttpPostedFileBase file = Request.Files["fileUpload"];

            if (null != file)
            {
                string fullPath = this.GetFullPath(file.FileName);
                if (!string.IsNullOrEmpty(fullPath))
                {
                    file.SaveAs(fullPath);
                }
            }

            return RedirectToAction("List");
        }

        private string GetFullPath(string fileName)
        {
            return string.Format("{0}\\{1}", Server.MapPath("~/" + Configuration.UploadsFolder), fileName);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult DeleteFile(string id)
        {
            if (null != id)
            {
                string fullPath = this.GetFullPath(id);
                if (System.IO.File.Exists(fullPath))
                {
                    System.IO.File.Delete(fullPath);
                }
            }
            return RedirectToAction("List");
        }
    }
}