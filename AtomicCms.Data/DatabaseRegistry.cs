using AtomicCms.Common.IDataContext;

namespace AtomicCms.Data.Concrete
{
    using Abstract;
    using StructureMap.Configuration.DSL;

    public class DatabaseRegistry : Registry
    {
        public DatabaseRegistry()
        {
            For<IPageData>().Use<PageData>();
            For<ISettingData>().Use<SettingData>();
            For<IUserData>().Use<UserData>();
            For<IMenuData>().Use<MenuData>();
            For<IAtomicCmsDataRepository>().Use<AtomicCmsRepository>();
        }
    }
}