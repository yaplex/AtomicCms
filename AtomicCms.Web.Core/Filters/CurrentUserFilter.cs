namespace AtomicCms.Web.Core.Filters
{
    using System.Web.Mvc;
    using Common.Entities;

    public class CurrentUserFilter : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            const string Key = "userName";

            if (filterContext.ActionParameters.ContainsKey(Key))
            {
                if (filterContext.HttpContext.User.Identity.IsAuthenticated)
                {
                    filterContext.ActionParameters[Key] = filterContext.HttpContext.User.Identity.Name;
                }
            }

            base.OnActionExecuting(filterContext);
        }

    }
}