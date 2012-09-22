namespace AtomicCms.Common.Adapters
{
    public interface IConfigurationAdapter
    {
        T GetSection<T>(string sectionName);
    }
}