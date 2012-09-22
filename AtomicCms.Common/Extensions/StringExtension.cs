namespace AtomicCms.Common.Extensions
{
    using System.Diagnostics;
    using System.Globalization;

    public static class StringExtension
    {
        [DebuggerStepThrough]
        public static string NullSafe(this string target)
        {
            return (target ?? string.Empty).Trim();
        }

        [DebuggerStepThrough]
        public static string FormatWith(this string target, params object[] args)
        {
            return string.Format(CultureInfo.CurrentCulture, target, args);
        }

        [DebuggerStepThrough]
        public static string Ellipsis(this string value, int maxLength)
        {
            const string suffix = "...";

            if (value == null)
                return null;

            string s = value;

            if (string.IsNullOrEmpty(s) || s.Length <= maxLength || s.Length < suffix.Length)
                return s;

            return s.Substring(0, maxLength - suffix.Length) + suffix;
        }
    }
}