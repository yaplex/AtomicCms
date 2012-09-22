namespace AtomicCms.Data.Abstract
{
    using System.Collections.Generic;
    using Common.Entities;

    public interface IPageData
    {
        CmsPage Load(int id);
        IEnumerable<CmsPage> LoadAll();
        IEnumerable<CmsPage> LoadLast(int numberOfLastCreated);
        void Save(CmsPage page);
        void Delete(int id);
        CmsTag LoadTag(string tagName);
        IEnumerable<CmsPage> LoadAllPublished();
    }
}