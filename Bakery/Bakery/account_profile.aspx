<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account_profile.aspx.cs" Inherits="Bakery.account_profile" %>

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
    <form action="account_profile.aspx" method="post" runat="server">
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
                            <asp:Button ID="Button1" runat="server" Text="Sign out" CssClass="btn btn-success" OnClick="Button1_Click" />
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
                                    <img class="img-xs rounded-circle" src="<%#img %>" alt="profile image" />
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
                                        <h4 class="card-title">Shopping orders</h4>
                                        <p class="card-description"></p>
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Product</th>
                                                    <th>Quantity</th>
                                                    <th>Date Order</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% foreach (string[] item in AllOrderList)
                                                    {
                                                %>
                                                <tr>
                                                    <td><%= item[1] %></td>
                                                    <td><%= item[2] %></td>
                                                    <td><%= item[3] %></td>
                                                    <% if (item[5].Equals("Delivered"))
                                                        {%>
                                                    <td><span class="btn btn-success"><%= item[5] %></span></td>
                                                    <%}
                                                        else
                                                        {
                                                    %>
                                                    <td><span class="btn btn-danger"><%= item[5] %></span></td>
                                                    <%} %>
                                                </tr>
                                                <%} %>
                                            </tbody>
                                        </table>
                                        <hr />
                                        <span>Total: <%=allTotal %></span>
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
