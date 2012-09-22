<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<AtomicCms.Common.Entities.CmsMenu>" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions" %>
<%@ Import Namespace="AtomicCms.Common.Entities" %>
<div class="module_menu">
    <div>
        <div>
            <div>
                <h3>
                    <%=Model.Title%></h3>
                <ul class="menu">
                    <%
                        foreach (CmsMenuItem item in Model.MenuItems)
                        {
                    %>
                    <li><a href="<%=Url.BuildMenuLink(item)%>" title="<%=Html.Encode(item.Title)%>"><span>
                        <%=Html.Encode(item.Title)%></span></a> </li>
                    <%
                        }%>
                </ul>
            </div>
        </div>
    </div>
</div>
