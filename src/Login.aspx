<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JonatanShlain_Final.Proj.Loginth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SimSpeed*Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous" />
</head>
<body class="d-flex align-items-center justify-content-center font-monospace fs-1">
    <form id="form1" runat="server">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
        <h1 class="text-center mb-5">Login</h1>
        <a href="Welcome.aspx" class="breadcrumb">< Back to welcome page</a>
        <%=msg%>
        <div class="form-group">
            <label for="username" class="form-label">Username:</label>
            <input type="text" name="Username" />
        </div>
        <div class="form-group">
            <label for="Password" class="form-label">Password:</label>
            <input type="password" name="Password" />
        </div>
        <div class="form-group">
            <label for="Captcha" class="form-label">Captcha:</label>
            <input type="text" name="Captcha" />
            <%=GenerateImg()%>
        </div>
        <div class="form-group">
            <input type="submit" value="Login" class="btn btn-primary" />
        </div>
    </form>
    <style>
        body {
            background-color: black;
            color: white;
        }
    </style>
</body>
</html>
