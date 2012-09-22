namespace AtomicCms.Common.Entities
{
    using System.Collections.Generic;
    using System.Security.Principal;
    using Utils;
    using Validation;

    public class CmsUser : CmsObject, IIdentity
    {
        public string Login { get; set; }
        public string Hash { get; set; }
        public string DisplayName { get; set; }
        public string Email { get; set; }
        public int Status { get; set; }
        public int Role { get; set; }

        public string Password
        {
            set
            {
                if (!string.IsNullOrEmpty(value))
                {
                    this.Hash = SimpleHash.ComputeHash(value,
                                                       SimpleHash.Algorith.SHA512,
                                                       null);
                }
            }
        }

        #region IIdentity Members

        public string Name
        {
            get { return this.Login; }
            set { this.Login = value; }
        }

        public string AuthenticationType
        {
            get { return "AtomicCmsAuthentication"; }
        }

        public bool IsAuthenticated
        {
            get { return Id != 0; }
        }

        #endregion

        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            yield break;
        }
    }
}