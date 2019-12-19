<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_productDetail.aspx.cs" Inherits="Bakery.admin_productDetail" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Admin Orders</title>
    <!-- inject:css -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/shared/style.css" />
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="dashboard-resource/assets/css/demo_1/style.css" />
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="dashboard-resource/assets/images/favicon.png" />
</head>
<body>
    <form action="admin_productDetail.aspx" method="post" runat="server">
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
                            <a href="admin_dashboard.aspx">
                                <p class="mb-1 mt-3 font-weight-semibold">Home</p>
                            </a>
                        </li>
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <a href="#">
                                <p class="mb-1 mt-3 font-weight-semibold">|</p>
                            </a>
                        </li>
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <a href="admin_profile.aspx">
                                <p class="mb-1 mt-3 font-weight-semibold">My Profile</p>
                            </a>
                        </li>
                        <li class="nav-item font-weight-semibold d-none d-lg-block">
                            <a href="#">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Sign out" OnClick="Button1_Click1" />
                            </a>
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
                                        <h4 class="card-title">Products Management</h4>

                                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#0000ff" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProId"
                                            DataSourceID="SqlDataSource2" Height="50px" Width="956px">
                                            <EditRowStyle BackColor="#ffffff" ForeColor="#808080" />
                                            <Fields>
                                                <asp:BoundField DataField="ProId" HeaderText="Product ID" ReadOnly="True" SortExpression="Product ID" />
                                                <asp:BoundField DataField="ProName" HeaderText="Product Name" SortExpression="Product Name" />
                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                                <asp:TemplateField HeaderText="Imgage"
                                                    SortExpression="ImgUrl">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("ImgUrl", "{0}") %>' Height="90px" Width="150px" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="300px" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="ImgUrl" HeaderText="ImgUrl" SortExpression="ImgUrl" />
                                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                                <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" />
                                            </Fields>
                                            <RowStyle BackColor="White" ForeColor="#003399" />
                                        </asp:DetailsView>

                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:BakeryConnectionString %>"
                                            SelectCommand="SELECT ProId, ProName, Price, Status, ImgUrl, Description, CategoryId, Quantity from [Product] WHERE (ProId = @ProId) and Status = 'Available'"
                                            DeleteCommand="UPDATE [Product] SET Status = 'Disable' WHERE (ProId = @ProId)"
                                            UpdateCommand="UPDATE [Product] SET ProName = @ProName, Price = @Price, Status = @Status, ImgUrl = @ImgUrl, Description = @Description, CategoryId = @CategoryId, Quantity = @Quantity WHERE (ProId = @ProId)">
                                            <DeleteParameters>
                                                <asp:QueryStringParameter Name="ProId" QueryStringField="ProId"
                                                    Type="String" />
                                            </DeleteParameters>
                                            <SelectParameters>
                                                <asp:QueryStringParameter Name="ProId" QueryStringField="ProId"
                                                    Type="String" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="ProName" />
                                                <asp:Parameter Name="Price" />
                                                <asp:Parameter Name="Status" />
                                                <asp:Parameter Name="ImgUrl" />
                                                <asp:Parameter Name="Description" />
                                                <asp:Parameter Name="CategoryId" />
                                                <asp:Parameter Name="Quantity" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <br />
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

