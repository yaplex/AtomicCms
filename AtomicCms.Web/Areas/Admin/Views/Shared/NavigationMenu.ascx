<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="menus_wrapper">
    <div id="main_menu">
        <ul>
            <li><a href="#" id="parentMenu1" class="selected"><span><span>Pages</span></span></a></li>
            <li><a href="#" id="parentMenu5"><span><span>Navigation</span></span></a></li>
            <li><a href="#" id="parentMenu2"><span><span>Media</span></span></a></li>
            <li><a href="#" id="parentMenu3"><span><span>AtomicCms Settings</span></span></a></li>
            <li class="last"><a href="#" id="parentMenu4"><span><span>User Accounts</span></span></a></li>
        </ul>
    </div>
    <div id="childMenu1" class="sec_menu">
        <ul>
            <li><%=Html.ActionLink("Edit", "List", "CmsPage", null, new{@class="edit"}) %></li>
            <li><%=Html.ActionLink("New page", "Edit", "CmsPage", new {id = string.Empty}, new{@class="sm8"}) %></li>
        </ul>
    </div>
    <div id="childMenu2" class="sec_menu" style="display:none">
        <ul>
            <li><%=Html.ActionLink("Files", "List", "FileUpload", null, new {@class="sm6"}) %></li>
<%--            <li><a href="#" class="sm2">Gallery</a></li>--%>
        </ul>
    </div>
    <div id="childMenu3" class="sec_menu" style="display:none">
        <ul>
            <li><%=Html.ActionLink("Edit settings", "List", "Settings", null, new{@class="edit"}) %></li>
            <li><%=Html.ActionLink("New setting", "Edit", "Settings", new { id = UrlParameter.Optional }, new { @class = "sm8" })%></li>
<%--            <li><a href="#" class="sm8">Site settings</a></li>--%>
        </ul>
    </div>
    <div id="childMenu4" class="sec_menu" style="display:none">
        <ul>
            <li><%=Html.ActionLink("Edit", "List", "Accounts", null, new{@class="edit"}) %></li>
            <li><%=Html.ActionLink("New Account", "Edit", "Accounts", null, new{@class="sm8"}) %></li>
        </ul>
    </div>
    
    <div id="childMenu5" class="sec_menu" style="display:none">
        <ul>
            <li><%=Html.ActionLink("Edit Menu", "List", "Menu", null, new{@class="edit"}) %></li>
            <li><%=Html.ActionLink("New Menu", "Edit", "Menu", null, new{@class="sm8"}) %></li>
        </ul>
    </div>
</div>
