<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JonatanShlain_Final.Proj.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous" />
    <title>SimSpeed*Register</title>
</head>
<body class="d-flex align-items-center justify-content-center font-monospace fs-1">
    <form id="form1" runat="server">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
        <h1 class="text-center mb-5">Register</h1>
        <a href="Welcome.aspx" class="breadcrumb">< Back to welcome page</a>
        <%=msg%>
        <div class="form-group">
            <label for="Fullname" class="form-label">Full Name:</label>
            <input type="text" name="Fullname" />
        </div>
        <div class="form-group">
            <label for="new_username" class="form-label">Username:</label>
            <input type="text" name="new_username" />
        </div>
        <div class="form-group">
            <label for="new_password" class="form-label">Password:</label>
            <input type="password" name="new_password" />
        </div>
        <div class="form-group">
            <label for="confirm_password" class="form-label">CONFIRM PASSWORD:</label>
            <input type="password" name="confirm_password" />
        </div>
        <div class="form-group">
            <input type="submit" value="Login" class="btn btn-primary" />
        </div>
        <style>
            body {
                background-color: black;
                color: white;
            }
        </style>
    </form>
</body>
</html>
