namespace AtomicCms.Web.Core.Configuration
{
    using System.Configuration;
    using Common.Adapters;

    public class ConfigurationAdapter : IConfigurationAdapter
    {
        public T GetSection<T>(string sectionName)
        {
            return (T) ConfigurationManager.GetSection(sectionName);
        }
    }
}