namespace AtomicCms.Data.Concrete
{
    using System.Collections.Generic;
    using Abstract;
    using Common.Entities;

    public class SettingData : NHSession, ISettingData
    {
        #region ISettingData Members

        public CmsSetting Get(string settingName)
        {
            return base.Get<CmsSetting>("Key", settingName);
        }

        public void Save(CmsSetting setting)
        {
            base.Save(setting);
        }

        public CmsSetting Load(int id)
        {
            return base.Load<CmsSetting>(id);
        }

        public IEnumerable<CmsSetting> LoadAll()
        {
            return base.LoadAll<CmsSetting>();
        }

        #endregion
    }
}