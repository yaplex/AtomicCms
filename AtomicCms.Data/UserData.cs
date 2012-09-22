namespace AtomicCms.Data.Concrete
{
    using System;
    using System.Collections.Generic;
    using Abstract;
    using Common.Entities;

    public class UserData : NHSession, IUserData
    {
        #region IUserData Members

        public CmsUser Login(string userName, string password)
        {
            return base.Get<CmsUser>("Login", userName);
        }

        public IEnumerable<CmsUser> LoadAll()
        {
            return base.LoadAll<CmsUser>();
        }

        public CmsUser Load(int id)
        {
            return base.Load<CmsUser>(id);
        }

        public void Save(CmsUser user)
        {
            base.Save(user);
        }

        public CmsUser Find(string userLogin)
        {
            return base.Get<CmsUser>("Login", userLogin);
        }

        #endregion
    }
}