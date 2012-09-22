using System.Collections.Generic;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Validation;

namespace AtomicCms.Common.Poco
{
    public abstract class Status : CmsObject
    {
        protected Status(StatusCode statusCode)
        {
            Id = (int) statusCode;
            StatusCode = statusCode;
        }

        protected StatusCode StatusCode { get; set; }

        public virtual string StatusName { get; set; }
        public virtual string Description { get; set; }

        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            yield break;
        }

        // all children have to overrite ToString method
        public override string ToString()
        {
            return StatusCode.ToString();
        }
    }

    public enum StatusCode
    {
        Draft = 1,
        Published = 2,
        Dropped = 3
    }

    public class DraftStatus : Status
    {
        public DraftStatus() : base(StatusCode.Draft)
        {
        }
    }

    public class PublishedStatus : Status
    {
        public PublishedStatus() : base(StatusCode.Published)
        {
        }
    }

    public class DroppedStatus : Status
    {
        public DroppedStatus() : base(StatusCode.Dropped)
        {
        }
    }
}