<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage<AtomicCms.Common.Entities.CmsUser>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Update user information
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="section">
        <div class="title_wrapper">
            <h2>
                Create/Update account</h2>
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
                                        Html.BeginForm("Edit", "Accounts", null, FormMethod.Post,
                                                       new { id = "editUserForm", @class = "search_form general_form" }))
                                    {%>
                                <fieldset>
                                    <div class="forms">
                                        <%=Html.HiddenFor(x=>x.Id)%>
                                        <%=Html.HiddenFor(x=>x.CreatedAt)%>
                                        <%=Html.HiddenFor(x => x.Hash)%>
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
                                                Login Name:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x=>x.Login,
                                                                       new {@class = "text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Display Name:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x=>x.DisplayName,
                                                                       new {@class = "text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Email:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x=>x.Email,
                                                                       new {@class = "text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                New Password:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBox("Password", "", new { @class = "text large" })%>
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
</asp:Content>
