<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Dashboard
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="section">
        <!--[if !IE]>start title wrapper<![endif]-->
        <div class="title_wrapper">
            <h2>
                Dashboard</h2>
            <span class="title_wrapper_left"></span><span class="title_wrapper_right"></span>
        </div>
        <!--[if !IE]>end title wrapper<![endif]-->
        <!--[if !IE]>start section content<![endif]-->
        <div class="section_content">
            <!--[if !IE]>start section content top<![endif]-->
            <div class="sct">
                <div class="sct_left">
                    <div class="sct_right">
                        <div class="sct_left">
                            <div class="sct_right">
                                <!--[if !IE]>start dashboard menu<![endif]-->
                                <div class="dashboard_menu_wrapper">
                                    <ul class="dashboard_menu">
                                        <li>
                                            <%=Html.ActionLink("User accounts", "List", "Accounts", null, new { @class = "d1 dashboard_link" })%></li>
                                        <li>
                                            <%=Html.ActionLink("Add new page", "Edit", "CmsPage", new {id = string.Empty}, new{@class="d2 dashboard_link"}) %></li>
                                        <li>
                                            <%=Html.ActionLink("Site settings", "List", "Settings", null, new { @class = "d4 dashboard_link" })%></li>
                                    </ul>
                                </div>
                                <!--[if !IE]>end dashboard menu<![endif]-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--[if !IE]>end section content top<![endif]-->
            <!--[if !IE]>start section content bottom<![endif]-->
            <span class="scb"><span class="scb_left"></span><span class="scb_right"></span></span>
            <!--[if !IE]>end section content bottom<![endif]-->
        </div>
        <!--[if !IE]>end section content<![endif]-->
    </div>
</asp:Content>
