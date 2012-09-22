<%@ Page Title="" Language="C#" MasterPageFile="~/skins/simple/simple.Master" Inherits="System.Web.Mvc.ViewPage<AtomicCms.Web.Core.ViewModels.TagViewModel>" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions.MvcHelpers" %>

<asp:Content runat="server" ContentPlaceHolderID="TitleContent">
    <%=Model.Tag %>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    <h1 class="page-title"><%=Model.Tag %></h1>
    <div class="clear"></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ul>
        <%foreach (AtomicCms.Common.Entities.CmsPage p in Model.Pages)
          {%>
        <li>
            <%=Html.ActionPageLink(p) %>
        </li>
        <%} %>
    </ul>
</asp:Content>
