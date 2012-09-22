namespace AtomicCms.Web.Core.Mvc
{
    using System;
    using System.Collections.Generic;
    using System.Web.Mvc;
    using Common.Attributes;

    public class CustomWebFormViewEngine : WebFormViewEngine
    {
        public CustomWebFormViewEngine()
        {
            string[] mastersLocation = new[]
                                           {
                                               string.Format("~/skins/{0}/{0}.master",
                                                             Utils.SkinName)
                                           };
            MasterLocationFormats = CustomViewEngineHelper.AddNewLocationFormats(new List<string>(MasterLocationFormats),
                                                               mastersLocation);

            string[] viewsLocation = new[]
                                         {
                                             string.Format("~/skins/{0}/Views/{{1}}/{{0}}.aspx",
                                                           Utils.SkinName),
                                             string.Format("~/skins/{0}/Views/{{1}}/{{0}}.ascx",
                                                           Utils.SkinName)
                                         };
            ViewLocationFormats =
                PartialViewLocationFormats = CustomViewEngineHelper.AddNewLocationFormats(new List<string>(ViewLocationFormats),
                                                                        viewsLocation);
        }

   

        public override ViewEngineResult FindView(ControllerContext controllerContext,
                                                  string viewName,
                                                  string masterName,
                                                  bool useCache)
        {
            masterName = CustomViewEngineHelper.OverrideMasterPage(masterName,
                                                 controllerContext);
            return base.FindView(controllerContext,
                                 viewName,
                                 masterName,
                                 useCache);
        }

    }
}