namespace AtomicCms.Web.Core.ActionResults
{
    using System.ServiceModel.Syndication;
    using System.Web.Mvc;
    using System.Xml;

    public class SyndicationActionResult : ActionResult
    {
        private readonly SyndicationFeedFormatter formatter;

        public SyndicationActionResult(SyndicationFeedFormatter formatter)
        {
            this.formatter = formatter;
        }

        public override void ExecuteResult(ControllerContext context)
        {
            context.HttpContext.Response.ContentType = "application/rss+xml";

            using (XmlWriter writer = XmlWriter.Create(context.HttpContext.Response.Output))
            {
                if (writer != null)
                    this.formatter.WriteTo(writer);
            }
        }
    }
}