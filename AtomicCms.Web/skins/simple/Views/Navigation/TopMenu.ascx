<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<AtomicCms.Common.Entities.CmsMenu>" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions" %>
<%@ Import Namespace="AtomicCms.Common.Entities" %>
<table cellspacing="0" cellpadding="0" style="margin: 0 auto;">
    <tr>
        <td>
            <ul id="mainlevel-nav">
                <%
                    foreach (CmsMenuItem item in Model.MenuItems)
                    {
                %>
                <li><a class="mainlevel-nav" href="<%=Url.BuildMenuLink(item)%>" title="<%=Html.Encode(item.Title)%>">
                    <%=Html.Encode(item.Title)%></a></li>
                <%
                    }%>
            </ul>
        </td>
    </tr>
</table>
