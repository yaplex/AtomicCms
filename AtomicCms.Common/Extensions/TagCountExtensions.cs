using AtomicCms.Common.Models;

namespace AtomicCms.Common.Extensions
{
    public static class TagCountExtensions
    {
        public static string GetTagClass(this TagCount tc, int total)
        {
            if (total == 0)
            {
                total = 1;
            }

            int result = (tc.Count*100)/total;

            if (result <= 3)
                return "tag1";
            if (result <= 8)
                return "tag2";
            if (result <= 15)
                return "tag3";
            if (result <= 20)
                return "tag4";
            if (result <= 30)
                return "tag5";
            if (result <= 45)
                return "tag6";
            return "tag7";
        }
    }
}