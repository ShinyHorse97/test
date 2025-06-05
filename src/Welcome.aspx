<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="JonatanShlain_Final.Proj.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Anonymous+Pro:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
        crossorigin="anonymous"/>
    <title>Welcome*SimSpeed</title>
    <style>
        body {
            background-image: url('Images/BackgroundImages/Image_Welcome.png');
            background-repeat: no-repeat;
            background-position: center;
            background-size: contain;
            color: white;
        }

        .button-area {
            position: absolute;
            top: 60%;
            right: 30%;
            z-index: 10;
            text-align: center;
            transform: translateY(-50%);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
        <link href="StyleSheet1.css" rel="stylesheet" />
        <h1 class="anonymous-pro-regular">Welcome to SimSpeed </h1>
        <h2 class="anonymous-pro-regular">The Ultimate Racing Simulation Experience</h2>
        <div class="button-area btn-group-lg">
            <a href="Login.aspx" class="btn btn-primary" style="width: 100%">Login</a>
            <a href="Register.aspx" class="btn btn-primary mt-5" style="width: 100%;">Register</a>

        </div>
    </form>
</body>
</html>
