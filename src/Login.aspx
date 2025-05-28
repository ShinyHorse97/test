<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JonatanShlain_Final.Proj.Loginth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet1.css"; />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">Login</td>
                </tr>
                <tr>
                    <td>Just for debugging:</td>
                    <td><%= Session["captcha"] %></td>
                </tr>
                <tr>
                    <td colspan="2"><%= msg %></td>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td>Captcha:</td>
                    <td><input type="text" name="captcha" /><span size="40px"><%= GenerateImg() %></span></td>
                </tr>
                <tr>
                    <td colspan ="2"><button type="submit">Login</button></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
<!-- mashu -->
