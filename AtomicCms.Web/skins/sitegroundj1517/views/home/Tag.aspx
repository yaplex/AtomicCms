<%@ Page Title="" Language="C#" MasterPageFile="~/skins/sitegroundj1517/sitegroundj1517.Master" Inherits="System.Web.Mvc.ViewPage<AtomicCms.Web.Core.ViewModels.TagViewModel>" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions.MvcHelpers" %>

<asp:Content runat="server" ContentPlaceHolderID="TitleContent">
    <%=Model.Tag %>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    <%=Model.Tag %>
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
