<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage<AtomicCms.Web.Core.ViewModels.AdminEditPageViewModel>" %>

<%@ Import Namespace="AtomicCms.Common.Extensions" %>

<%@ Import Namespace="AtomicCms.Web.Core.Extensions.MvcHelpers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit/Create Page
</asp:Content>
<asp:Content ContentPlaceHolderID="HeaderContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function ()
        {
            showPermalinkForExistingPage();
            $('#Page_PageTitle').blur(function ()
            {
                saveDraftPage();
            });
        })

        function saveDraftPage()
        {
            if ($('#Page_Id').val() != 0)
                return;
            var title = $('#Page_PageTitle').val();
            $.post("/Tools/CreateAlias/", { title: title }, createAliasCallback, "json");
        }

        function showPermalinkForExistingPage()
        {
            var alias = $('#Page_Alias').val();
            if (alias)
                $('#permalink').show();
        }

        function updatePage(data)
        {
            var alias = data.alias;
            var pageId = data.id;
            var url = _getPageUrl(pageId, alias);

            $('#Page_Id').val(pageId);
            $('#Page_Alias').val(alias);
            $('#pagePermalink').html(url);
            $('#permalinkUrl').attr('href', '/' + url); $('#txtNewPageAlias').val(alias);
        }
        function createAliasCallback(data, textStatus)
        {
            if (data)
            {
                $('#permalink').show();
                updatePage(data);
            }
        }

        function updateAliasCallback(data, textStatus)
        {
            if (data)
            {
                $('#pageAlias').hide();
                $('#changeAliasButtonContainer').show();
                updatePage(data);
            }
        }

        function _getPageUrl(id, alias)
        {
            return alias + '-' + id + '/';
        }
        function changeAlias()
        {
            $('#pageAlias').show();
            $('#changeAliasButtonContainer').hide();
        }

        function updateAlias()
        {
            var newAliasText = $('#txtNewPageAlias').val();
            var pageId = $('#Page_Id').val();
            $.post("/Tools/UpdateAlias/", { id: pageId, alias: newAliasText }, updateAliasCallback, "json");
        }

    </script>
    <script type="text/javascript">
        $(function ()
        {
            $("#Tags")
            // don't navigate away from the field on tab when selecting an item
			.bind("keypress", function (event)
			{
			    getTagList(event);

			    if (event.keyCode === $.ui.keyCode.TAB &&
						$(this).data("autocomplete").menu.active)
			    {
			        event.preventDefault();
			    }
			});
        });

        function split(val)
        {
            return val.split(/,\s*/);
        }
        function extractLast(term)
        {
            return split(term).pop();
        }

        function resetAutocomplete(tags)
        {
            $('#Tags')
                .autocomplete(
            {
                minLength: 0,
                source: function (request, response)
                {
                    // delegate back to autocomplete, but extract the last term
                    response($.ui.autocomplete.filter(
						tags, extractLast(request.term)));
                },
                focus: function ()
                {
                    // prevent value inserted on focus
                    return false;
                },
                select: function (event, ui)
                {
                    var terms = split(this.value);
                    // remove the current input
                    terms.pop();
                    // add the selected item
                    terms.push(ui.item.value);
                    // add placeholder to get the comma-and-space at the end
                    terms.push("");
                    this.value = terms.join(", ");
                    return false;
                }
            });
        }

        function getTagList(e)
        {
            var c = String.fromCharCode(e.which);
            var tagsText = $('#Tags').val();
            $.getJSON('/admin/Service/SuggestTag/' + tagsText + c,
                function (json)
                {
                    var tags = [];
                    $.each(json, function (i, item)
                    {
                        tags.push(item.Name);
                    });

                    resetAutocomplete(tags);
                }
            );
        }
    </script>
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
                                    var success = TempData["SuccessResult"] != null;%>
                                <%
                                    if (success)%>
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
                                        Html.BeginForm("Edit", "CmsPage", null, FormMethod.Post,
                                                       new { id = "editEntryForm", @class = "search_form general_form" }))
                                    {%>
                                <fieldset>
                                    <div class="forms">
                                        <%=Html.HiddenFor(x => x.Page.Id)%>
                                        <%=Html.HiddenFor(x => x.Page.CreatedAt)%>
                                        <%=Html.HiddenFor(x => x.Page.Alias)%>
                                        <%=Html.HiddenFor(x => x.Page.ModifiedAt)%>
                                        <div class="row">
                                            <div class="buttons" style="float: right;">
                                                <%=Html.DropDownList("Page.Status.Id", Model.PageStatuses, new {@class="page-statuses"}) %>
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
                                                    <%=Html.TextBoxFor(x => x.Page.PageTitle,
                                                                          new {@class = "text large"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row" id="permalink" style="display: none">
                                            <label>
                                                Permalink:</label>
                                            <div class="inputs wideInputs">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <span class="button red_btn" style="margin: 0px 10px 0px 0px;"><span><a id="permalinkUrl"
                                                                href="<%="/" + Html.PageLink(Model.Page)%>" target="_blank"><span>OPEN</span></a></span></span>
                                                            <span>
                                                                <%=HttpUtility.UrlDecode(Url.SiteUrl())%></span><span id="pagePermalink"><%=Html.PageLink(Model.Page)%></span>
                                                            <div id="pageAlias" style="display: none">
                                                                <table>
                                                                    <tr>
                                                                        <td style="width: 420px">
                                                                            <input type="text" class="text wide" id="txtNewPageAlias" value="<%=Model.Page.Alias%>" />
                                                                        </td>
                                                                        <td>
                                                                            <span class="button send_form_btn"><span><a href="#" class="button" onclick="updateAlias(); return false;">
                                                                                <span>SAVE</span> </a></span></span>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <span id="changeAliasButtonContainer" class="button send_form_btn"><span><a href="#"
                                                                class="button" onclick="changeAlias(); return false;"><span>EDIT</span> </a></span>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Page body:</label>
                                            <div class="inputs wideInputs">
                                                <span class="wide">
                                                    <%=Html.TextAreaFor(x => x.Page.PageContent, null)%>
                                                    <script type="text/javascript">
                                                        CKEDITOR.replace('Page_PageContent',
                                                        {
                                                            toolbar:
        [
           ['Source', '-', 'Save', 'NewPage', 'Preview', '-', 'Templates'],
    ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Print', 'SpellChecker', 'Scayt'],
    ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'],
    ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
    '/',
    ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
    ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote', 'CreateDiv'],
    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
    ['Link', 'Unlink', 'Anchor'],
    ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'],
    '/',
    ['Styles', 'Format', 'Font', 'FontSize'],
    ['TextColor', 'BGColor'],
    ['Maximize', 'ShowBlocks', '-', 'About']

        ],
                                                            height: 400,
                                                            scayt_autoStartup: false
                                                        });
                                                    </script>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Tags:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBox("Tags", Model.Page.Tags.ToTagString(),
                                                                       new {@class = "text"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Meta title:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper wide">
                                                    <%=Html.TextBoxFor(x => x.Page.SeoTitle, new { @class = "text" })%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Meta keywords:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper textarea_wrapper wide" style="height: 40px;">
                                                    <%=Html.TextAreaFor(x => x.Page.MetaKeywords,
                                                                           new {@class = "text"})%>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label>
                                                Meta description:</label>
                                            <div class="inputs wideInputs">
                                                <span class="input_wrapper textarea_wrapper wide" style="height: 55px;">
                                                    <%=Html.TextAreaFor(x => x.Page.MetaDescription,
                                                                           new {@class = "text"})%>
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
