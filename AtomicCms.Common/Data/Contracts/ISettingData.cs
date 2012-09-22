namespace AtomicCms.Data.Abstract
{
    using System.Collections.Generic;
    using Common.Entities;

    public interface ISettingData
    {
        CmsSetting Get(string settingName);
        void Save(CmsSetting setting);
        CmsSetting Load(int id);
        IEnumerable<CmsSetting> LoadAll();
    }
}