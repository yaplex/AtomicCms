namespace AtomicCms.Common.Entities
{
    using System.Collections.Generic;
    using Validation;

    public class CmsMenu : CmsObject
    {
        public CmsMenu()
        {
            this.MenuItems = new List<CmsMenuItem>();
        }

        public ICollection<CmsMenuItem> MenuItems { get; set; }
        public string Title { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }

        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            if (string.IsNullOrEmpty(Title))
            {
                yield return new RuleViolation("Title is null", "Title");
            }

            yield break;
        }
    }
}