namespace AtomicCms.Services
{
    using System.Collections.Generic;
    using AtomicCms.Common.Entities;
    using AtomicCms.Common.Utils;
    using AtomicCms.Data.Abstract;

    public class UserService
    {
        private readonly IUserData userData;

        public UserService(IUserData userData)
        {
            this.userData = userData;
        }

        public CmsUser Login(string userName, string password)
        {
            CmsUser user = userData.Login(userName, password);
            if (null != user && IsPasswordValid(user, password))
            {
                return user;
            }

            return null;
        }

        public IEnumerable<CmsUser> LoadAll()
        {
            return userData.LoadAll();
        }

        public CmsUser Load(int id)
        {
            return userData.Load(id);
        }

        public void Update(CmsUser user)
        {
            userData.Save(user);
        }

        public CmsUser Find(string userLogin)
        {
            return userData.Find(userLogin);
        }

        private bool IsPasswordValid(CmsUser user, string password)
        {
            return SimpleHash.VerifyHash(password,
                                         SimpleHash.Algorith.SHA512,
                                         user.Hash
                );
        }
    }
}