namespace AtomicCms.Services
{
    using System;
    using System.Collections.Generic;
    using System.Web.Caching;
    using System.Web.Configuration;
    using Common.Adapters;
    using Common.Entities;
    using Common.Extensions;
    using Data.Abstract;

    public class SettingService
    {
        private const string settingCacheKey = "__AtomicCmsCacheKey_";
        private readonly IConfigurationAdapter _configurationAdapter;
        private readonly ISettingData settingData;

        public SettingService(ISettingData settingData, IConfigurationAdapter _configurationAdapter)
        {
            this.settingData = settingData;
            this._configurationAdapter = _configurationAdapter;
        }

        public CmsSetting Load(int id)
        {
            return settingData.Load(id);
        }

        public CmsSetting Load(string key)
        {
            return settingData.Get(key);
        }

        public IEnumerable<CmsSetting> LoadAll()
        {
            return settingData.LoadAll();
        }

        public void Update(CmsSetting cmsSetting)
        {
            settingData.Save(cmsSetting);
        }

        public string GetSettingValue(string settingKey, Cache cache)
        {
            string settingFromCache = GetFromCache(settingKey, cache);
            if (null != settingFromCache)
            {
                return settingFromCache;
            }

            CmsSetting setting = settingData.Get(settingKey);
            if (null == setting)
            {
                CacheSetting(settingKey, string.Empty, cache);
                return string.Empty;
            }

            CacheSetting(settingKey, setting.Value, cache);
            return setting.Value;
        }

        private void CacheSetting(string settingKey, string settingValue, Cache cache)
        {
            settingValue = settingValue.NullSafe();
            OutputCacheSettingsSection outputCacheSection =
                _configurationAdapter.GetSection<OutputCacheSettingsSection>("system.web/caching/outputCacheSettings");
            if (outputCacheSection.OutputCacheProfiles.Count > 0)
            {
                OutputCacheProfile profile = outputCacheSection.OutputCacheProfiles.Get("SettingsCacheProfile");
                if (null != profile)
                {
                    cache.Add(settingCacheKey + settingKey, settingValue, null, Cache.NoAbsoluteExpiration,
                              TimeSpan.FromSeconds(profile.Duration), CacheItemPriority.Normal, null);
                }
            }
        }

        private string GetFromCache(string settingKey, Cache cache)
        {
            var valueFromCache = cache[settingCacheKey + settingKey] as string;
            if (null != valueFromCache)
            {
                return valueFromCache;
            }

            return null;
        }
    }
}