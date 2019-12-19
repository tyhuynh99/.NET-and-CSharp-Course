<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_product.aspx.cs" Inherits="Bakery.admin_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <form action="admin_product.aspx" method="post" runat="server">
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
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProId" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="956px" AllowPaging="True">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="ProId" HeaderText="Product ID" ReadOnly="True" SortExpression="Product ID" />
                                                <asp:BoundField DataField="ProName" HeaderText="Product Name" SortExpression="Product Name" />
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
                                                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                                <asp:HyperLinkField DataNavigateUrlFields="ProId" DataNavigateUrlFormatString="admin_productDetail.aspx?ProId={0}" HeaderText="View Detail" Text="View Detail" />
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
                                        <br />
                                        <h3 style="color:red; font-family: 'Mongolian Baiti'"><span style="color: slategrey; font-size: 13px;">>>> </span>Insert new product<span style="color: slategrey; font-size: 13px;"><<< </span></h3>
                                        <asp:Image ID="Image2" runat="server" />
                                        <br />
                                        <br />
                                        <label>
                                            <h4>Product ID:</h4>
                                        </label>
                                        <asp:TextBox ID="txtProId" runat="server"></asp:TextBox>
                                        <br />
                                        <label>
                                            <h4>Product Name:</h4>
                                        </label>
                                        <asp:TextBox ID="txtProName" runat="server"></asp:TextBox>
                                        <br />
                                        <label>
                                            <h4>Product Price:</h4>
                                        </label>
                                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                                        <br />

<%--                                        <label>
                                            <h4>Product Status:</h4>
                                        </label>
                                        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                                        <br />--%>
                                        <label>
                                            <h4>Product Description:</h4>
                                        </label>
                                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                                        <br />
                                        <label>
                                            <h4>Category:</h4>
                                        </label>
                                        <asp:DropDownList ID="cate" runat="server"></asp:DropDownList>
                                        <br />
                                        <label>
                                            <h4>Quantity:</h4>
                                        </label>
                                        <asp:TextBox ID="txtQuantity" TextMode="Number" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:Button ID="btnInsert" CssClass="btn btn-primary" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                                        <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Load Image" OnClick="Button2_Click" />
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:Label ID="fileError" runat="server" Text=""></asp:Label>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BakeryConnectionString %>" SelectCommand="SELECT ProId, ProName, Price, Status, ImgUrl, Description, CategoryId, Quantity from [Product] WHERE Status = 'Available'"></asp:SqlDataSource>
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
