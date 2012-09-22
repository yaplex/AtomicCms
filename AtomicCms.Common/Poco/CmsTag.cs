namespace AtomicCms.Common.Entities
{
    using System.Collections.Generic;
    using Validation;

    public class CmsTag : CmsObject
    {
        public string Name { get; set; }

        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            yield break;
        }
    }
}