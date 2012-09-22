<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage<ICollection<CmsPage>>" %>

<%@ Import Namespace="AtomicCms.Common.Entities" %>
<%@ Import Namespace="AtomicCms.Web.Core.Extensions.MvcHelpers" %>
<%@ Import Namespace="AtomicCms.Common.Extensions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Pages
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="section table_section">
        <!--[if !IE]>start title wrapper<![endif]-->
        <div class="title_wrapper">
            <h2>
                Pages</h2>
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
                                                            <a href="#" class="asc">Title</a>
                                                        </th>
                                                        <th>
                                                            Status
                                                        </th>
                                                        <th style="width: 105px;">
                                                            <a href="#">Last modified</a>
                                                        </th>
                                                        <th style="width: 170px;">
                                                            Actions
                                                        </th>
                                                    </tr>
                                                    <%
                                                        bool odd = false;
                                                        foreach (CmsPage entry in Model)
                                                        {
                                                            odd = !odd;
                                                    %>
                                                    <tr class='<%=odd?"first":"second" %>'>
                                                        <td>
                                                            <%=entry.Id%>
                                                        </td>
                                                        <td>
                                                            <%=Html.ActionLink(entry.PageTitle.Ellipsis(70), "Edit", "CmsPage", new { Id = entry.Id }, new { @class = "product_name" })%>
                                                        </td>
                                                        <td>
                                                            <%=entry.Status.ToString() %>
                                                        </td>
                                                        <td>
                                                            <%=entry.ModifiedAt.ToShortDateString()%>
                                                        </td>
                                                        <td>
                                                            <div class="actions_menu">
                                                                <ul>
                                                                    <li>
                                                                        <%=Html.PageLink("View", entry, new{@class="sm3", target="_blank"}) %>
                                                                    </li>
                                                                   <li>
                                                                        <%=Html.ActionLink("Edit",
                                                      "Edit",
                                                      "CmsPage", new {Id = entry.Id},
                                                      new {@class = "edit"})%>
                                                                    </li>
                                                                     <li>
                                                                        <%=Html.DeleteLink("Delete", "Delete", "CmsPage", new { Id = entry.Id }, new { @class = "delete" })%>
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
                                    <!--[if !IE]>end table_wrapper<![endif]-->
                                </div>
                                <!--[if !IE]>start pagination<![endif]-->
                                <div class="pagination" style="display:none">
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
