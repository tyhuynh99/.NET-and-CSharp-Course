<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Bakery.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="css/login-style.css" />
    <style>
        body {
            /* The image used */
            background-image: url("/img/background.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            font-family: "roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .form input[type=submit] {
            background-color: forestgreen;
            color: white;
            margin-top: 10px;
        }

    </style>
</head>
<body>
    <div class="login-page">
        <div class="form">
            <form action="login.aspx" class="login-form" method="post" runat="server">             
                <label>Username</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <label>Password</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login"  OnClick="Button1_Click" />
                <asp:Label ID="txtMess" runat="server" Text="" ForeColor="Red"></asp:Label>
            </form>
            <p class="message">Not registered? <a href="register.aspx">Create an account</a></p>
            <p class="message"><a href="index.aspx">Back to Home</a></p>
        </div>
    </div>
</body>
</html>
