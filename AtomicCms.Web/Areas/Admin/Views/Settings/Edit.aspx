<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage<AtomicCms.Common.Entities.CmsSetting>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit site setting
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="section">
        <div class="title_wrapper">
            <h2>
                Edit/Create Page</h2>
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
                                        Html.BeginForm("Edit", "Settings", null, FormMethod.Post,
                                                       new { id = "editSiteSettingForm", @class = "search_form general_form" }))
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
                                                Key:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x=>x.Key,
                                                                       new {@class = "text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Value:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper textarea_wrapper wide" style="height: 440px;">
                                                    <%=Html.TextAreaFor(x => x.Value, new { @class = "text" })%>
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
