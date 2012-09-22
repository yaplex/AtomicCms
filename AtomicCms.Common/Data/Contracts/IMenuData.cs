namespace AtomicCms.Data.Abstract
{
    using System.Collections.Generic;
    using Common.Entities;

    public interface IMenuData
    {
        CmsMenu LoadMenu(string menuName);
        IEnumerable<CmsMenu> LoadAll();
        CmsMenu Load(int id);
        CmsMenuItem LoadMenuItem(int id);
        void Save(CmsMenu menu);
        void SaveMenuItem(CmsMenuItem item);
    }
}