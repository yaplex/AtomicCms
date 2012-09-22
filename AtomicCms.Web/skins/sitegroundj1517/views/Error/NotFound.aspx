<%@ Page Title="" Language="C#" MasterPageFile="~/skins/sitegroundj1517/sitegroundj1517.Master"
    Inherits="System.Web.Mvc.ViewPage<AtomicCms.Web.Core.ViewModels.TagViewModel>" %>

<asp:Content runat="server" ContentPlaceHolderID="TitleContent">
    404 Page Not Found
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    The page that you requested cannot be displayed
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%Html.RenderPartial("NotFoundContent");%>
</asp:Content>
