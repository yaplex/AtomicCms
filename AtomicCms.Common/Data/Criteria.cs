using System;

namespace AtomicCms.Common.Data
{
    public class Criteria
    {
        public string PropertyName { get; private set; }
        public string Value { get; private set; }
        public CriteriaType Type { get; private set; }

        public Criteria(string propertyName, string value, CriteriaType criteriaType)
        {
            PropertyName = propertyName;
            Value = value;
            Type = criteriaType;
        }
    }

    public enum CriteriaType
    {
        StartsWith = 1,
        Contains
    }
}