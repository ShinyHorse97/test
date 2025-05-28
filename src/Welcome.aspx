<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="JonatanShlain_Final.Proj.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Anonymous+Pro:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet" />
    <title>Welcome*SimSpeed</title>
    <style>
        body {
            background-image: url('Images/BackgroundImages/Image_Welcome.png');
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover, contain, 100%;
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
        <link href="StyleSheet1.css" rel="stylesheet" />
        <h1 class="anonymous-pro-regular">Welcome to SimSpeed </h1>
        <h2 class="anonymous-pro-regular">The Ultimate Racing Simulation Experience</h2>
        <div class="button-area">
            <a href="Login.aspx" class="Button" style="width: 100%">Login</a>
            <a href="Register.aspx" class="Button" style="width: 100%; margin-top:20px;">Register</a>

        </div>
    </form>
</body>
</html>
