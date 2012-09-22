namespace AtomicCms.Web.Core.Extensions.MvcHelpers
{
    using System.Web;
    using System.Web.Mvc;

    public static class SocialNetworking
    {
        public static string FacebookLikeButton(this HtmlHelper helper, string url)
        {
            const string FacebookAPI = @"<iframe src=""http://www.facebook.com/plugins/like.php?href={0}&amp;layout=standard&amp;show_faces=true&amp;width=350&amp;action=like&amp;colorscheme=light&amp;height=35"" scrolling=""no"" frameborder=""0"" style=""border:none; overflow:hidden; width:350px; height:80px;"" allowTransparency=""true""></iframe>";
            return string.Format(FacebookAPI, HttpUtility.UrlEncode(url));
        }
    }
}