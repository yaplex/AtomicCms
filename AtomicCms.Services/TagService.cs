using System;
using System.Collections.Generic;
using AtomicCms.Common.Data;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Extensions;
using AtomicCms.Common.IDataContext;

namespace AtomicCms.Services
{
    public class TagService
    {
        private readonly IAtomicCmsDataRepository _repository;

        public TagService(IAtomicCmsDataRepository repository)
        {
            _repository = repository;
        }

        public ICollection<CmsTag> Find(string example)
        {
            string tagExample = example.NullSafe();
            // return empty list for < 2 letters
            if (string.IsNullOrEmpty(tagExample) || tagExample.Length < 2)
            {
                return new List<CmsTag>();
            }

            // consider only the last tag in comma separated string
            string[] values = tagExample.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            int count = values.Length;
            string theLastExample = values[count - 1];

            Query query = new Query();
            query.AddCriteria(new Criteria("Name", theLastExample.Trim(), CriteriaType.Contains));
            ICollection<CmsTag> tags = _repository.Find<CmsTag>(query);
            return tags;
        }
    }
}