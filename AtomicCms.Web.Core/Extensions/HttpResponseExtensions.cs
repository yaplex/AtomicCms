namespace AtomicCms.Web.Core.Extensions
{
    using System.Web;

    public static class HttpResponseExtensions
    {
        public static void PermanentRedirect(this HttpResponse response, string location)
        {
            if (null == response)
            {
                return;
            }

            response.Status = "301 Moved permanently";
            response.StatusCode = 301;
            response.AddHeader(
                "Location",
                location);
        }

        public static void PermanentRedirect(this HttpResponseBase response, string location)
        {
            if (null == response)
            {
                return;
            }

            response.Status = "301 Moved permanently";
            response.StatusCode = 301;
            response.AddHeader(
                "Location",
                location);
        }
    }
}