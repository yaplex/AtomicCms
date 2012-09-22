<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace="AtomicCms.Common.Constants" %>

    Unfortunately, we were unable to locate the page you are looking for because:
    <ul>
        <li>The page does not exist</li>
        <li>An address was mistyped</li>
        <li>You have an out-of-date bookmark or favourite</li>
        <li>A search engine has an out-of-date listing for this page</li>
    </ul>
    <div>
        Please visit the <a href="/">
            <%Html.RenderAction("FreeHtml", "Tools",
                                                          new { htmlKey = Constant.Settings.SiteLogo });%></a>
        homepage!
    </div>