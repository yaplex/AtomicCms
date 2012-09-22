<%@ Import Namespace="System.IO" %>

<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/LiquidAdmin.Master"
    Inherits="System.Web.Mvc.ViewPage<ICollection<FileInfo>>" %>

<%@ Import Namespace="AtomicCms.Web.Core.Extensions.MvcHelpers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Uploads
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%using (Html.BeginForm("UploadFile", "FileUpload", FormMethod.Post, new { enctype = "multipart/form-data" })) %>
    <%{%>
    <div style="margin-bottom: 10px;">
        <input type="file" name="fileUpload" id="fileUpload" />
        <input type="submit" value="Upload" />
    </div>
    <%}%>
   
    <div class="section table_section">
        <!--[if !IE]>start title wrapper<![endif]-->
        <div class="title_wrapper">
            <h2>
                Uploaded files</h2>
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
                                                        <th>
                                                            <a href="#" class="asc">File name</a>
                                                        </th>
                                                        <th style="width: 105px;">
                                                            <a href="#">Upload date</a>
                                                        </th>
                                                        <th style="width: 170px;">
                                                            Actions
                                                        </th>
                                                    </tr>
                                                    <%
                                                        bool odd = false;
                                                        foreach (FileInfo fileInfo in Model)
                                                        {
                                                            odd = !odd;
                                                    %>
                                                    <tr class='<%=odd?"first":"second" %>'>
                                                        <td>
                                                            <a href="<%=ResolveUrl("~/") + AtomicCms.Web.Core.Configuration.Configuration.UploadsFolder + "/" + fileInfo.Name %>"
                                                                class="product_name"><%=fileInfo.Name %></a>
                                                        </td>
                                                        <td>
                                                            <%=fileInfo.CreationTime.ToShortDateString()%>
                                                        </td>
                                                        <td>
                                                            <div class="actions_menu">
                                                                <ul>
                                                                    <li><a href="<%=ResolveUrl("~/") + AtomicCms.Web.Core.Configuration.Configuration.UploadsFolder + "/" + fileInfo.Name %>"
                                                                        class="sm6">
                                                                        Download</a>
                                                                    </li>
                                                                    <li>
                                                                        <%=Html.DeleteLink("Delete", "DeleteFile", "FileUpload", new { id = fileInfo.Name }, new { @class = "delete" })%>
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
