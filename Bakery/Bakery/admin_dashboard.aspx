<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_dashboard.aspx.cs" Inherits="Bakery.admin_dashboard" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Admin Dashboard</title>
    <!-- inject:css -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/shared/style.css" />
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/demo_1/style.css" />
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="dashboard-resource/assets/images/favicon.png" />
</head>
<body>
    <form action="admin_dashboard.aspx" runat="server" method="post">
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
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Sign out" />
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
                                    <img id="ava" class="img-xs rounded-circle" src="img/face/<%=Session["IMG"].ToString() %>" alt="profile image" />
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
                                        <h4 class="card-title">Accounts Management</h4>

                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="1007px" DataKeyNames="Username">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                                <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" />
                                                <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=.;Initial Catalog=Bakery;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP (3) Username, Password, RoleID, Fullname, DOB, Address, Email, Img FROM Account"></asp:SqlDataSource>
                                        <br />
                                        <a href="admin_account.aspx">
                                            <p class="mb-1 mt-3 font-weight-semibold">Read More</p>
                                        </a>
                                    </div>


                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Products Management</h4>
                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="956px" AllowPaging="True">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="ProId" HeaderText="ID" ReadOnly="True" SortExpression="Product ID" />
                                                    <asp:BoundField DataField="ProName" HeaderText="Name" SortExpression="Product Name" />
                                                    <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" SortExpression="Price" />
                                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                                    <asp:TemplateField HeaderText="Imgage"
                                                        SortExpression="ImgUrl">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("ImgUrl", "{0}") %>' Height="100px" Width="150px" />
                                                        </ItemTemplate>
                                                        <HeaderStyle Height="130px" Width="170px" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                                    <asp:BoundField DataField="CategoryId" HeaderText="Category" SortExpression="CategoryId" />
                                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                                    <asp:HyperLinkField DataNavigateUrlFields="ProId" DataNavigateUrlFormatString="admin_productDetail.aspx?ProId={0}" HeaderText="" Text="View Detail" />
                                                </Columns>
                                                <EditRowStyle BackColor="#2461BF" />
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BakeryConnectionString %>" SelectCommand="SELECT ProId, ProName, Price, Status, ImgUrl, Description, CategoryId, Quantity from [Product] WHERE Status = 'Available'"></asp:SqlDataSource>
                                            <br />
                                            <a href="admin_product.aspx">
                                                <p class="mb-1 mt-3 font-weight-semibold">Read More</p>
                                            </a>
                                        </div>
                                    </div>


                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Orders Management</h4>


                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1516px" DataKeyNames="OrderId">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
                                                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                                                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                                    <asp:BoundField DataField="PaymentId" HeaderText="PaymentId" SortExpression="PaymentId" />
                                                </Columns>
                                                <EditRowStyle BackColor="#2461BF" />
                                                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                            </asp:GridView>
                                            <br />
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.;Initial Catalog=Bakery;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP (3) OrderId, OrderDate, Username, Status, Total, Address, PaymentId FROM [Order] ORDER BY OrderDate DESC"></asp:SqlDataSource>
                                            <a href="admin_orders.aspx">
                                                <p class="mb-1 mt-3 font-weight-semibold">Read More</p>
                                            </a>
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
            </div>
        </div>
        </div>
    </form>
</body>
</html>
