<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account_setting.aspx.cs" Inherits="Bakery.account_setting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Profile</title>
    <!-- inject:css -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/shared/style.css" />
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/demo_1/style.css" />
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="dashboard-resource/assets/images/favicon.png" />
</head>
<body>
    <form action="account_setting.aspx" runat="server" method="post">
        <div class="container-scroller">
            <!-- Start Navbar -->
            <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
                    <a class="navbar-brand brand-logo" href="#">
                        <img src="dashboard-resource/assets/images/logo.svg" alt="logo" />
                    </a>
                    <a class="navbar-brand brand-logo-mini" href="#">
                        <img src="dashboard-resource/assets/images/logo-mini.svg" alt="logo" />
                    </a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center">
                    <ul class="navbar-nav">
                        <li class="nav-item font-weight-semibold d-none d-lg-block">Profile</li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <a href="index.aspx">Home
                            </a>
                        </li>
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <a href="cart.aspx">Cart
                            </a>
                        </li>
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" Text="Sign out" OnClick="Button3_Click" />
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:../../partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item nav-profile">
                            <a href="#" class="nav-link">
                                <%--Profile góc trái bên trên--%>
                                <div class="profile-image">
                                    <img class="img-xs rounded-circle" src="<%# img %>" alt="profile image" />
                                    <div class="dot-indicator bg-success"></div>
                                </div>
                                <div class="text-wrapper">
                                    <p class="profile-name">
                                        <%# fullname %>
                                    </p>
                                    <p class="designation"><%# role %></p>
                                </div>
                            </a>
                        </li>
                        <%--Menu bên trái--%>
                        <li class="nav-item nav-category">Main Menu</li>
                        <li class="nav-item">
                            <a class="nav-link" href="account_profile.aspx">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Profile</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="account_setting.aspx">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Setting</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-lg-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Setting</h4>
                                        <p class="card-description">All your information</p>
                                        <asp:Image ID="Image2" runat="server" ImageUrl="<%# img %>" />
                                        <br />
                                        <asp:FileUpload ID="FileUpload2" accept="image/*" multiple="false" runat="server" /><asp:Label ID="fileError" runat="server"></asp:Label>
                                        <br />
                                        <br />
                                        <label>Fullname:</label>
                                        <asp:TextBox ID="txtFullname" Text="<%#fullname %>" runat="server"></asp:TextBox>
                                        <label>Address:</label>
                                        <asp:TextBox ID="txtAddress" Text="<%#addr %>" runat="server"></asp:TextBox>
                                        <label>Email:</label>
                                        <asp:TextBox ID="txtEmail" Text="<%#email %>" TextMode="Email" runat="server"></asp:TextBox>
                                        <label>Birthday:</label>
                                        <asp:TextBox ID="birthday" TextMode="Date" Text="2019-1-1"  runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="Button2_Click" />
                                        <asp:Button ID="Button1" runat="server" Text="Save Image" CssClass="btn btn-primary" OnClick="Button1_Click1" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <footer class="footer">
                        <div class="container-fluid clearfix">
                            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019 <a href="#" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i>
                            </span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
    </form>
</body>
</html>
