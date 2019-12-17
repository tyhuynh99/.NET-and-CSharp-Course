<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Bakery.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="css/login-style.css" />
</head>
<body>
    <div class="login-page">
        <div class="form">
            <form action="login.aspx" class="login-form" method="post" runat="server">
                <label>Username</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <label>Password</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </form>
            <p class="message">Not registered? <a href="register.aspx">Create an account</a></p>
            <p class="message"><a href="index.aspx">Back to Home</a></p>
        </div>
    </div>
</body>
</html>
