using AtomicCms.Common.Logging;
using AtomicCms.Data.Concrete;
using AtomicCms.Web.Core.Configuration;
using StructureMap;

namespace AtomicCms.Web.Core.IoC
{
    using Common.Adapters;

    public class StructureMapRegistration
    {
        public static void RegisterAll()
        {
            ObjectFactory.Initialize(x =>
                                         {
                                             x.AddRegistry<DatabaseRegistry>();
                                             x.For<IConfigurationAdapter>().Use<ConfigurationAdapter>();
                                             x.For<LoggingService>().Use<LoggingService>();
                                         });
        }
    }
}