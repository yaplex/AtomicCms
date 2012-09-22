<%@ Page Title="" Language="C#" MasterPageFile="~/skins/simple/simple.Master" Inherits="System.Web.Mvc.ViewPage<AtomicCms.Common.Entities.CmsPage>" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions.MvcHelpers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
<h1 class="page-title">
	 <%=Html.PageTitle(Model) %>
</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%=(Model).PageContent%>
    <div>
        <%=Html.FacebookLikeButton(Url.PageUrl(Model))%>
    </div>
</asp:Content>
