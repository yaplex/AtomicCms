using System.Collections.Generic;

namespace AtomicCms.Common.Data
{
    public class Query
    {
        public Query()
        {
            Criterias = new List<Criteria>();
        }

        public IList<Criteria> Criterias { get; private set; }

        public void AddCriteria(Criteria criteria)
        {
            Criterias.Add(criteria);
        }
    }
}