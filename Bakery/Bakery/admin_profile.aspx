<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_profile.aspx.cs" Inherits="Bakery.admin_profile" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Admin Profile</title>
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
                            <asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Text="Sign out" OnClick="Button4_Click1" />
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
                                    <asp:Image ID="Image3" runat="server" class="img-xs rounded-circle" alt="profile image" />
                                    <%--<img class="img-xs rounded-circle" src="img/face/<%=Session["IMG"].ToString() %>" alt="profile image" />--%>
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
                                        <h4 class="card-title">My Profile</h4>
                                        <div>
                                            <a class="nav-link" href="admin_account.aspx">
                                                <asp:Image ID="Image1" runat="server" Height="100px" Width="140px" />
                                            </a>
                                            <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Label ID="fileError" runat="server"></asp:Label>
                                            <asp:HiddenField ID="HiddenField1" runat="server" />
                                            <br />
                                            <br />
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <asp:Label ID="Label1" runat="server" Text="UserID "></asp:Label>
                                                        <asp:TextBox ID="txtName" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <asp:Label ID="lbPass" runat="server" Text="Password "></asp:Label>
                                                        <asp:TextBox ID="txtPass" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <asp:Label ID="lbFullname" runat="server" Text="Fullname: "></asp:Label>
                                                        <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <asp:Label ID="lbAddress" runat="server" Text="Address: "></asp:Label>
                                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <asp:Label ID="lbEmail" runat="server" Text="Email: "></asp:Label>
                                                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <asp:Label ID="lbDOB" runat="server" Text="Day of birth: "></asp:Label>
                                                        <asp:TextBox ID="txtDOB" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <asp:Button ID="Button2" runat="server" Text="Update Profile" OnClick="Button2_Click" CssClass="btn btn-primary" />
                                                <asp:Button ID="Button3" runat="server" Text="Upload Image" OnClick="Button3_Click" CssClass="btn btn-primary"/>
                                            </div>
                                            <asp:Label ID="success" runat="server" ForeColor="Green"></asp:Label>
                                            <asp:Label ID="faill" runat="server" ForeColor="Red"></asp:Label>

                                        </div>
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
