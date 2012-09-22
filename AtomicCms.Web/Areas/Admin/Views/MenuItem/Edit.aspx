<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage<AtomicCms.Web.Core.ViewModelMenuItem>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EditMenuItem
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function ()
        {
            $('#MenuItem_IsExternalUrl').click(manipulateEnabling);

            setIsExternalCheckBox();
            manipulateEnabling();

            function setIsExternalCheckBox()
            {

                $('#MenuItem_IsExternalUrl').attr('checked', !!$('#MenuItem_NavigateUrl').val());
            }

            function manipulateEnabling()
            {
                if ($('#MenuItem_IsExternalUrl').is(':checked'))
                {
                    $('#navigateUrlRow').show();
                    $('#pageIdRow').hide();
                }
                else
                {
                    $('#navigateUrlRow').hide();
                    $('#pageIdRow').show();
                }
            }
        });

    </script>
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
                                        Html.BeginForm("Edit", "MenuItem", null, FormMethod.Post,
                                                       new { id = "editMenuItemForm", @class = "search_form general_form" }))
                                    {%>
                                <fieldset>
                                    <div class="forms">
                                        <%=Html.HiddenFor(x=>x.MenuItem.Id)%>
                                        <%=Html.HiddenFor(x => x.MenuItem.CreatedAt)%>
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
                                                Menu Type:</label>
                                            <div class="inputs wideInputs">
                                                <span class="">
                                                    <%=Html.DropDownList("MenuItem.MenuId", Model.MenuTypes)%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Title:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x => x.MenuItem.Title,
                                                                       new {@class = "text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Is external URL:</label>
                                            <div class="inputs wideInputs">
                                                <span class="">
                                                    <%=Html.CheckBoxFor(x => x.MenuItem.IsExternalUrl)%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row" id="navigateUrlRow">
                                            <label>
                                                Navigate URL:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x => x.MenuItem.NavigateUrl, new { @class = "text large" })%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row" id="pageIdRow">
                                            <label>
                                                Page ID:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x => x.MenuItem.Entry.Id, new{@class="text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Visible:</label>
                                            <div class="inputs wideInputs">
                                                <span class="">
                                                    <%=Html.CheckBoxFor(x=>x.MenuItem.Visible)%>
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
