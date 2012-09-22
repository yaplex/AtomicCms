namespace AtomicCms.Common.Entities
{
    using System;
    using System.Collections.Generic;
    using Validation;

    public class CmsSetting : CmsObject
    {
        public string Key { get; set; }
        public string Value { get; set; }

        public int GetIntValue()
        {
            return Int32.Parse(this.Value);
        }

        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            yield break;
        }
    }
}