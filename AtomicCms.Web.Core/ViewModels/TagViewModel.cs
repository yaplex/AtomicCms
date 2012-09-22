using System;
using System.Collections.Generic;
using AtomicCms.Common.Entities;
using AtomicCms.Common.Models;

namespace AtomicCms.Web.Core.ViewModels
{
    public class TagViewModel
    {
        public IEnumerable<CmsPage> Pages { get; set; }
        public string Tag { get; set; }
    }
}