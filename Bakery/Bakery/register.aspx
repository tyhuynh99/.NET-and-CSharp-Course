<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Bakery.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
    <div class="form">
        <form class="register-form" runat="server">
            <label>Username</label>
            <input type="text" placeholder="username" name="txtUsername" id="txtUsername" runat="server" required />
            <label>Password</label>
            <input type="password" placeholder="password" name="txtPassword" id="txtPassword" runat="server" required />
            <label>Email</label>
            <input type="email" placeholder="email address" name="txtEmail" id="txtEmail" runat="server" required />
            <label>Full name</label>
            <input type="text" placeholder="full name" name="txtFullname" id="txtFullname" runat="server" required />
            <label>Birthday</label>
            <input type="date" placeholder="birthday" name="txtBirthday" id="txtBirthday" runat="server" required />
            <label>Address</label>
            <input type="text" placeholder="address" name="txtAddress" id="txtAddress" runat="server" required />
            <asp:Button CssClass="Btn" ID="BtnSubmit" runat="server" Text="CREATE" OnClick="BtnSubmit_Click" />
            <p class="message">Already registered? <a href="login.aspx">Sign In</a></p>
            <p class="message"><a href="index.aspx">Back to Home</a></p>
        </form>
    </div>
</body>
</html>
