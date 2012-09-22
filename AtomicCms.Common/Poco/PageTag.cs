using System;
using System.Collections.Generic;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Validation;

namespace AtomicCms.Common.Models
{
    public class PageTag : CmsObject
    {
        public CmsPage Page { get; set; }
        public CmsTag Tag { get; set; }
        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            yield break;
        }

        public override bool Equals(object obj)
        {
            if (obj == null)
            {
                return false;
            }

            PageTag pt = obj as PageTag;
            if ( null == pt)
            {
                return false;
            }

            return Page.Equals(pt.Page) && Tag.Equals(pt.Tag);
        }

        public override int GetHashCode()
        {
            return Page.GetHashCode() ^ Tag.GetHashCode();
        }
    }
}