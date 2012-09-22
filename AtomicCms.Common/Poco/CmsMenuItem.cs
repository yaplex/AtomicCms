namespace AtomicCms.Common.Entities
{
    using System.Collections.Generic;
    using Validation;

    public class CmsMenuItem : CmsObject
    {
        public string Title { get; set; }
        public string NavigateUrl { get; set; }
        public int MenuId { get; set; }

        public bool IsExternalUrl
        {
            get { return this.Entry == null; }
        }

        public bool Visible { get; set; }
        public CmsPage Entry { get; set; }

        public string GetUrl()
        {
            if (this.IsExternalUrl)
            {
            }

            return this.NavigateUrl;
        }

        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            yield break;
        }
    }
}