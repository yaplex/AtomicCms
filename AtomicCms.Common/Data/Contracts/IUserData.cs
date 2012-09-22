namespace AtomicCms.Data.Abstract
{
    using System.Collections.Generic;
    using Common.Entities;

    public interface IUserData
    {
        CmsUser Login(string userName, string password);
        IEnumerable<CmsUser> LoadAll();
        CmsUser Load(int id);
        void Save(CmsUser user);
        CmsUser Find(string userLogin);
    }
}