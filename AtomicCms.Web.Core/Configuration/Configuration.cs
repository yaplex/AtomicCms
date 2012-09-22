namespace AtomicCms.Web.Core.Configuration
{
    using System.Configuration;

    public class Configuration
    {
        public static string UploadsFolder
        {
            get { return ConfigurationManager.AppSettings["Uploads"]; }
        }
    }
}