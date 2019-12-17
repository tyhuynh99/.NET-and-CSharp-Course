<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Bakery.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="css/login-style.css" />
</head>
<body>
    <div class="form">
        <form class="register-form">
            <label>Username</label>
            <input type="text" placeholder="username" />
            <label>Password</label>
            <input type="password" placeholder="password" />
            <label>Email</label>
            <input type="text" placeholder="email address" />
            <label>Full name</label>
            <input type="text" placeholder="full name" />
            <label>Birthday</label>
            <input type="date" placeholder="birthday" />
            <label>Address</label>
            <input type="text" placeholder="address" />
            <button>create</button>
            <p class="message">Already registered? <a href="login.aspx">Sign In</a></p>
            <p class="message"><a href="index.aspx">Back to Home</a></p>
        </form>
    </div>
</body>
</html>
