namespace AtomicCms.Web.Core.Mvc
{
    using System.Web.Mvc;
    using System.Xml.Serialization;
    using Common.Entities;

    public class SitemapResult : ActionResult
    {
        public SitemapResult(Sitemap sitemap)
        {
            this.Sitemap = sitemap;
        }

        public Sitemap Sitemap { get; private set; }

        public override void ExecuteResult(ControllerContext context)
        {
            context.HttpContext.Response.ContentType = "text/xml";


            XmlSerializer serializer = new XmlSerializer(typeof (Sitemap));
            serializer.Serialize(context.HttpContext.Response.Output,
                                 this.Sitemap);
        }
    }
}