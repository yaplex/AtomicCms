namespace AtomicCms.Web.Core.Extensions
{
    using System.Collections.Generic;
    using System.Web.Mvc;
    using Common.Validation;

    public static class ModelStateExtension
    {
        public static void AddModelErrors(this ModelStateDictionary modelState, IEnumerable<RuleViolation> errors)
        {
            foreach (RuleViolation issue in errors)
            {
                modelState.AddModelError(issue.PropertyName, issue.ErrorMessage);
            }
        }
    }
}