namespace AtomicCms.Common.Extensions
{
    using System.Collections.Generic;
    using AtomicCms.Common.Entities;

    public static class CmsTagsExtension
    {
        public static string ToTagString(this ICollection<CmsTag> tags)
        {
            string tagString = string.Empty;

            foreach (CmsTag cmsTag in tags)
            {
                if (tagString.Length > 0)
                {
                    tagString += ", " + cmsTag.Name;
                }
                else
                {
                    tagString += cmsTag.Name;
                }
            }

            return tagString;
        }
    }
}