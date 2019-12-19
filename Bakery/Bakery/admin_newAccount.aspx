<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_newAccount.aspx.cs" Inherits="Bakery.admin_newAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Admin Account</title>
    <!-- inject:css -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/shared/style.css" />
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/demo_1/style.css" />
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="dashboard-resource/assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
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

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <a href="admin_dashboard.aspx">Home
                            </a>
                        </li>
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <a href="admin_profile.aspx">My Profile
                            </a>
                        </li>
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Sign out" OnClick="Button1_Click" />
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
                                    <img class="img-xs rounded-circle" src="img/face/<%=Session["IMG"].ToString() %>" alt="profile image" />
                                    <div class="dot-indicator bg-success"></div>
                                </div>
                                <div class="text-wrapper">
                                    <p class="profile-name">
                                        <asp:Label ID="LbName" runat="server" Text="Label"></asp:Label>
                                    </p>
                                    <p class="designation">
                                        <asp:Label ID="LbRole" runat="server" Text="Label"></asp:Label>
                                    </p>
                                </div>
                            </a>
                        </li>
                        <%--Menu bên trái--%>
                        <li class="nav-item nav-category">Main Menu</li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin_account.aspx">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Accounts Management</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin_product.aspx">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Products Management</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin_orders.aspx">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Orders Management</span>
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
                                        <h4 class="card-title">New Account</h4>
                                        <div style="width: 90%">

                                            <label>Username</label>
                                            <asp:TextBox ID="username" runat="server" placeholder="username"></asp:TextBox>

                                            <label>Password</label>
                                            <asp:TextBox ID="password" TextMode="Password" runat="server" placeholder="password"></asp:TextBox>
                                            <label>Email</label>
                                            <asp:TextBox ID="email" TextMode="Email" runat="server" placeholder="email"></asp:TextBox>
                                            <label>Full name</label>
                                            <asp:TextBox ID="fullname" runat="server" placeholder="fullname"></asp:TextBox>
                                            <label>Birthday</label>
                                            <asp:TextBox ID="birthday" runat="server" TextMode="Date" placeholder="brithday"></asp:TextBox>
                                            <label>Address</label>
                                            <asp:TextBox ID="Address" runat="server" placeholder="address"></asp:TextBox>
                                            <label>Role</label><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoleID" DataValueField="RoleID"></asp:DropDownList>

                                        </div>
                                        <input id="Reset1" type="reset" value="reset" class="btn btn-primary" />

                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="Button2_Click" />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BakeryConnectionString %>" SelectCommand="SELECT DISTINCT [RoleID] FROM [Account]"></asp:SqlDataSource>
                                        <asp:Label ID="txtMess" runat="server"></asp:Label>
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
