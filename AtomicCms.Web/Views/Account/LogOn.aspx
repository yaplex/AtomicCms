<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>LogOn</title>
    <link media="screen" rel="stylesheet" type="text/css" href='<%=Url.Content("~/content/liquid-admin/admin-login.css")%>' />
    <!--[if lte IE 6]><link media="screen" rel="stylesheet" type="text/css" href='<%=Url.Content("~/content/liquid-admin/admin-login-ie.css")%>' /><![endif]-->
    <script type="text/javascript" src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function ()
        {
            $('#username').focus();
        });
    </script>
</head>
<body>
    <!--[if !IE]>start wrapper<![endif]-->
    <div id="wrapper">
        <!--[if !IE]>start login wrapper<![endif]-->
        <div id="login_wrapper">
            <% if (TempData.ContainsKey("loginValidation"))
               { %>
            <div class="error">
                <div class="error_inner">
                    <strong>Access Denied</strong> | <span><%=TempData["loginValidation"] %></span>
                </div>
            </div>
            <%} %>
            <!--[if !IE]>start login<![endif]-->
            <% using (Html.BeginForm("LogOn", "Account", new { ReturnUrl = Request.QueryString["ReturnUrl"] }))
               {%>
            <fieldset>
                <h1 id="logo">
                    <a href="/">websitename Administration Panel</a></h1>
                <div class="formular">
                    <div class="formular_inner">
                        <label>
                            <strong>Username:</strong> <span class="input_wrapper">
                                <%= Html.TextBox("username") %>
                            </span>
                        </label>
                        <label>
                            <strong>Password:</strong> <span class="input_wrapper">
                                <%= Html.Password("password") %>
                            </span>
                        </label>
                        <label class="inline">
                            <%= Html.CheckBox("rememberMe", new{@class="checkbox"}) %>
                            remember me on this computer
                        </label>
                        <ul class="form_menu">
                            <li><span class="button"><span><span>Submit</span></span><input type="submit" name="" /></span></li>
                            <li><a href="/"><span><span>Home</span></span></a></li>
                        </ul>
                    </div>
                </div>
            </fieldset>
            <%} %>
            <!--[if !IE]>end login<![endif]-->
        </div>
        <!--[if !IE]>end login wrapper<![endif]-->
    </div>
    <!--[if !IE]>end wrapper<![endif]-->
</body>
</html>
