namespace AtomicCms.Common.Entities
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using Validation;

    public abstract class CmsObject
    {
        protected CmsObject()
        {
            CreatedAt = DateTime.Now;
        }

        public virtual int Id { get; set; }
        public virtual DateTime CreatedAt { get; set; }

        public virtual bool IsValid
        {
            get { return (this.GetRuleViolations().Count() == 0); }
        }

        public abstract IEnumerable<RuleViolation> GetRuleViolations();
    }
}