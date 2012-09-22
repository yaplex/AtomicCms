<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage<AtomicCms.Common.Entities.CmsMenu>" %>

<%@ Import Namespace="AtomicCms.Web.Controllers" %>
<%@ Import Namespace="AtomicCms.Common" %>
<%@ Import Namespace="AtomicCms.Common.Entities" %>
<%@ Import Namespace="AtomicCms.Common.Extensions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Menu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="section">
        <div class="title_wrapper">
            <h2>
                Edit/Create Menu</h2>
            <span class="title_wrapper_left"></span><span class="title_wrapper_right"></span>
        </div>
        <div class="section_content">
            <div class="sct">
                <div class="sct_left">
                    <div class="sct_right">
                        <div class="sct_left">
                            <div class="sct_right">
                                <%
                                    var success = TempData["SuccessResult"] != null; %>
                                <% if (success) %>
                                <%
                                    {%>
                                <ul class="system_messages">
                                    <li class="green"><span class="ico"></span><strong class="system_title">
                                        <%=TempData["SuccessResult"]%></strong></li>
                                </ul>
                                <%
                                    }%>
                                <%=Html.ValidationSummary("Edit was unsuccessful. Please correct the errors and try again.")%>
                                <%
                                    using (
                                        Html.BeginForm("Edit", "Menu", null, FormMethod.Post,
                                                       new { id = "editMenuForm", @class = "search_form general_form" }))
                                    {%>
                                <fieldset>
                                    <div class="forms">
                                        <%=Html.HiddenFor(x=>x.Id)%>
                                        <%=Html.HiddenFor(x=>x.CreatedAt)%>
                                        <div class="row">
                                            <div class="buttons" style="float: right;">
                                                <ul>
                                                    <li><span class="button send_form_btn"><span><span>SEND FORM</span></span><input
                                                        type="submit" /></span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Title:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x=>x.Title,
                                                                       new {@class = "text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Description:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x => x.Description, new { @class = "text large" })%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Type:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x=>x.Type, new {@class = "text large"}) %>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <%
                                    }%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <span class="scb"><span class="scb_left"></span><span class="scb_right"></span></span>
        </div>
    </div>
    <div class="section table_section" style="display:<%=Model.Id==0?"none":""%>">
        <!--[if !IE]>start title wrapper<![endif]-->
        <div class="title_wrapper">
            <h2>
                Menu Items</h2>
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
                                <div id="product_list">
                                    <!--[if !IE]>start table_wrapper<![endif]-->
                                    <div class="table_wrapper">
                                        <div class="table_wrapper_inner">
                                            <table cellpadding="0" cellspacing="0" width="100%">
                                                <tbody>
                                                    <tr>
                                                        <th style="width: 16px;">
                                                            No.
                                                        </th>
                                                        <th>
                                                            Title
                                                        </th>
                                                        <th>
                                                            URL
                                                        </th>
                                                        <th>
                                                            Is External
                                                        </th>
                                                        <th>
                                                            Page
                                                        </th>
                                                        <th>
                                                            Is Visisble
                                                        </th>
                                                        <th style="width: 170px;">
                                                            Actions
                                                        </th>
                                                    </tr>
                                                    <%
                                                        bool odd = false;
                                                        foreach (var entry in Model.MenuItems)
                                                        {
                                                            odd = !odd;
                                                    %>
                                                    <tr class='<%=odd?"first":"second" %>'>
                                                        <td>
                                                            <%=entry.Id%>
                                                        </td>
                                                        <td>
                                                            <strong>
                                                                <%=entry.Title%></strong>
                                                        </td>
                                                        <td>
                                                            <%=entry.NavigateUrl%>
                                                        </td>
                                                        <td>
                                                            <%=entry.IsExternalUrl%>
                                                        </td>
                                                        <td>
                                                            <% if (null != entry.Entry)
                                                               { %>
                                                            <%=entry.Entry.Id.ToString() + " - " + entry.Entry.PageTitle.Ellipsis(20)%>
                                                            <%} %>
                                                        </td>
                                                        <td>
                                                            <%=entry.Visible%>
                                                        </td>
                                                        <td>
                                                            <div class="actions_menu">
                                                                <ul>
                                                                    <li>
                                                                        <%=Html.ActionLink("Edit", "Edit", "MenuItem", new {id = entry.Id}, new {@class = "edit"})%>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <%
}%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table_menu">
                                        <ul class="left">
                                            <li><a class="button add_new" href="<% =Url.Action("Edit", "MenuItem", new{id=string.Empty})%>">
                                                <span><span>ADD NEW</span></span></a> </li>
                                        </ul>
                                    </div>
                                    <!--[if !IE]>end table_wrapper<![endif]-->
                                </div>
                                <!--[if !IE]>start pagination<![endif]-->
                                <div class="pagination" style="display: none">
                                    <span class="page_no">Page 1 of 217</span>
                                    <ul class="pag_list">
                                        <li><a href="#" class="button light_blue_btn"><span><span>PREVIOUS</span></span></a>
                                        </li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#" class="current_page"><span><span>2</span></span></a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li>[...]</li>
                                        <li><a href="#">217</a></li>
                                        <li><a href="#" class="button light_blue_btn"><span><span>NEXT</span></span></a>
                                        </li>
                                    </ul>
                                </div>
                                <!--[if !IE]>end pagination<![endif]-->
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
