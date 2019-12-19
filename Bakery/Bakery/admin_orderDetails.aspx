<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_orderDetails.aspx.cs" Inherits="Bakery.admin_orderDetails" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Admin Order Details</title>
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
                                        <h4 class="card-title">Orders Management</h4>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="956px" AllowPaging="True" DataKeyNames="OrderId,ProId">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="true" SortExpression="OrderId" />
                                                <asp:BoundField DataField="ProId" HeaderText="ProId" ReadOnly="true" SortExpression="ProId" />
                                                <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
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
                                        <br />


                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=.;Initial Catalog=Bakery;Integrated Security=True" SelectCommand="SELECT OrderId, ProId, Quantity, Status FROM OrderDetail WHERE (OrderId = @OrderId)" UpdateCommand="UPDATE OrderDetail SET Quantity = @Quantity, Status = @Status WHERE (OrderId = @OrderId) AND (ProId = @ProId)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter DefaultValue="O-01" Name="OrderId" QueryStringField="OrderId" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Quantity" />
                                                <asp:Parameter Name="Status" />
                                                <asp:Parameter Name="OrderId" />
                                                <asp:Parameter Name="ProId" />
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
