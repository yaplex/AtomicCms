using AtomicCms.Common.Poco;

namespace AtomicCms.Common.Entities
{
    using System;
    using System.Collections.Generic;
    using System.Text;
    using System.Text.RegularExpressions;
    using System.Web.Mvc;
    using Validation;

    [Bind(Exclude = "Tags")]
    public class CmsPage : CmsObject
    {
        public CmsPage()
        {
            this.Tags = new List<CmsTag>();
            Status = new DraftStatus();
        }

        public Status Status { get; set; }
        public string SeoTitle { get; set; }
        public string PageTitle { get; set; }
        public string Alias { get; set; }
        public string PageContent { get; set; }
        public CmsUser Author { get; set; }
        public DateTime ModifiedAt { get; set; }
        public string MetaDescription { get; set; }
        public string MetaKeywords { get; set; }

        public ICollection<CmsTag> Tags { get; set; }

        public ValueProviderResult TagString { get; set; }

        public override IEnumerable<RuleViolation> GetRuleViolations()
        {
            if (string.IsNullOrEmpty(this.Alias))
            {
                yield return new RuleViolation("Alias is empty", "Alias");
            }

            if (string.IsNullOrEmpty(this.PageTitle))
            {
                yield return new RuleViolation("Page title is empty", "PageTitle");
            }

            yield break;
        }

        public static string CreateAlias(string title)
        {
            Regex regex = new Regex("[a-zA-Z0-9]{3,}");
            Match m = regex.Match(title);
            StringBuilder parsedTitle = new StringBuilder();
            while (m.Success)
            {
                Group g = m.Groups[0];
                parsedTitle.Append(g.Value + " ");

                m = m.NextMatch();
            }

            return parsedTitle.ToString().ToLower().Trim().Replace(" ", "-");
        }

        public string GetUrl()
        {
            return this.Alias + "-" + Id + "/";
        }
    }
}