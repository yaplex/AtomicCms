<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>404 Page Not Found</title>
    <style type="text/css">
     div.a
        {
            border-top: 1px solid #bbb;
            border-bottom: 1px solid #bbb;
            background: #f2f2f2;
            clear: both;
            margin-top: 1em;
            width: 100%;
            direction: ltr;
        }
        div.b
        {
            padding: .5em 0;
            margin-left: 10px;
        }
         div.c
        {
            margin-top: 35px;
            margin-left: 10%;
            margin-right: 10%;
            direction: ltr;
        }
    </style>
</head>
<body>
    <div class="a">
        <div class="b">
            <h1>
                The page that you requested cannot be displayed</h1>
        </div>
    </div>
    <div class="c">
        <%Html.RenderPartial("NotFoundContent");%>
    </div>
</body>
</html>
