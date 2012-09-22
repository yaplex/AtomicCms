using System.Collections.Generic;
using AtomicCms.Common.Data;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Models;

namespace AtomicCms.Common.IDataContext
{
    public interface IAtomicCmsDataRepository
    {
        IEnumerable<PageTag> GetPagesTags();
        IEnumerable<CmsPage> GetPagesWithTag(string tag);
        ICollection<T> LoadAll<T>() where T : class;
        ICollection<T> Find<T>(Query query) where T : class;
/*

        T Load(int id);
        IEnumerable<T> LoadAll();
        IEnumerable<T> Find(IQuery query);
        T FindFirst(IQuery query);
        void Save(T entity);
        void Add(T entity);
        void Delete(T entity);
*/
        T Load<T>(int id);
    }
}