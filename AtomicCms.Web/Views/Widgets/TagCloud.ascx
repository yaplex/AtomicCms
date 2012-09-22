<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IList<AtomicCms.Common.Models.TagCount>>" %>
<%@ Import Namespace="AtomicCms.Common.Extensions" %>
<%@ Import Namespace="AtomicCms.Common.Models" %>
<div class="tags-cloud">
    <h3>
        Tags cloud
    </h3>
    <ul class="tags-cloud">
        <%
            int max = Model.Count;
            foreach (TagCount entry in Model)
            {
        %>
        <li><a href="/tag/<%=entry.Tag.Name %>" class="<%=entry.GetTagClass(max) %>">
            <%=entry.Tag.Name %>
        </a></li>
        <%
            }%>
    </ul>
</div>
