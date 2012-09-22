<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<AtomicCms.Common.Entities.CmsMenu>" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions" %>
<%@ Import Namespace="AtomicCms.Common.Entities" %>
<div id="pillmenu">
    <ul id="mainlevel-nav">
        <%
            foreach (CmsMenuItem item in Model.MenuItems)
            {
        %>
        <li><a href="<%=Url.BuildMenuLink(item)%>" title="<%=Html.Encode(item.Title)%>" class="mainlevel-nav">
            <%=Html.Encode(item.Title)%></a> </li>
        <%
            }%>
    </ul>
</div>

