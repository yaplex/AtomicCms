<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ICollection<CmsPage>>" %>
<%@ Import Namespace="AtomicCms.Common.Entities" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions" %>
<%@ Import Namespace="AtomicCms.Common.Extensions" %>
<div class="module_menu">
    <div>
        <div>
            <div>
                <h3>
                    <%=Html.Resource("Resources","LastAdded")%>
                </h3>
                <ul class="menu">
                    <%
                        foreach (CmsPage entry in Model)
                        {
                    %>
                    <li>
                        <%=Html.ActionLink(entry.PageTitle.Ellipsis(23),
                                                              "Content",
                                                              "Home",
                                                              new {id = entry.Id, name = entry.Alias},
                                                              new {title = entry.SeoTitle})%>
                    </li>
                    <%
                        }%>
                </ul>
            </div>
        </div>
    </div>
</div>
