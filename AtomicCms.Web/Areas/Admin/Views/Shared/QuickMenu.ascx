<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>
            Quick Access</h2>
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
                            <ul class="sidebar_menu">
                                <li><%=Html.ActionLink("Dashboard", "Index", "Dashboard") %></li>
                                <li class="last">
                                    <%=Html.ActionLink("Add new page", "Edit", "CmsPage", new {id = string.Empty}, null) %></li>
                            </ul>
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
