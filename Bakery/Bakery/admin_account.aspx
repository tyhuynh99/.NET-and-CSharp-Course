<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_account.aspx.cs" Inherits="Bakery.admin_account" %>

<!DOCTYPE html>

<html>
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
                                        <h4 class="card-title">Accounts Management</h4>
                                        <div style="width: 90%">
                                            <asp:GridView ID="GridView1" runat="server" CellPadding="6" Width="1097px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                                                    <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" />
                                                    <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                                                    <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                    <asp:TemplateField HeaderText="Img"
                                                        SortExpression="GraphicFileName">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("Img", "~/img/face/{0}") %>' Height="90px" Width="90px" />
                                                        </ItemTemplate>
                                                        <HeaderStyle Width="300px" />
                                                    </asp:TemplateField>
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
                                        </div>
                                        <br />
                                        <br />
                                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Username" DataSourceID="SqlDataSource2" Height="50px" Width="1106px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <Fields>
                                                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                                                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="RoleID" SortExpression="RoleID">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RoleID") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RoleID") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("RoleID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Fullname" SortExpression="Fullname">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Fullname") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Fullname") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Fullname") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                                <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator06" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Img"
                                                    SortExpression="GraphicFileName">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("Img", "~/img/face/{0}") %>' Height="90px" Width="90px" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="300px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Img" SortExpression="Img">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Img") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Img") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Img") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ShowEditButton="True" />
                                            </Fields>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                        </asp:DetailsView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BakeryConnectionString %>" DeleteCommand="DELETE FROM [Account] WHERE [Username] = @original_Username" InsertCommand="INSERT INTO [Account] ([Username], [RoleID], [Fullname], [Address], [Email], [Img]) VALUES (@Username, @RoleID, @Fullname, @Address, @Email, @Img)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Username], [RoleID], [Fullname], [Address], [Email], [Img] FROM [Account]" UpdateCommand="UPDATE [Account] SET [RoleID] = @RoleID, [Fullname] = @Fullname, [Address] = @Address, [Email] = @Email, [Img] = @Img WHERE [Username] = @original_Username">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_Username" Type="String" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Username" Type="String" />
                                                <asp:Parameter Name="RoleID" Type="String" />
                                                <asp:Parameter Name="Fullname" Type="String" />
                                                <asp:Parameter Name="Address" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Img" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="RoleID" Type="String" />
                                                <asp:Parameter Name="Fullname" Type="String" />
                                                <asp:Parameter Name="Address" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Img" Type="String" />
                                                <asp:Parameter Name="original_Username" Type="String" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                            ConnectionString="Data Source=.;Initial Catalog=Bakery;Integrated Security=True"
                                            DeleteCommand="DELETE FROM [Account] WHERE [Username] = @Username"
                                            InsertCommand="INSERT INTO [Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (@Username, @Password, @RoleID, @Fullname, @DOB, @Address, @Email, @Img)" SelectCommand="SELECT [Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img] FROM [Account] WHERE [Username] = @Username"
                                            UpdateCommand="UPDATE [Account] SET [Password] = @Password, [RoleID] = @RoleID, [Fullname] = @Fullname, [DOB] = @DOB, [Address] = @Address, [Email] = @Email, [Img] = @Img WHERE [Username] = @Username">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Username" Type="String" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Username" Type="String" />
                                                <asp:Parameter Name="Password" Type="String" />
                                                <asp:Parameter Name="RoleID" Type="String" />
                                                <asp:Parameter Name="Fullname" Type="String" />
                                                <asp:Parameter DbType="Date" Name="DOB" />
                                                <asp:Parameter Name="Address" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Img" Type="String" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="GridView1" Name="Username" PropertyName="SelectedValue" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Password" Type="String" />
                                                <asp:Parameter Name="RoleID" Type="String" />
                                                <asp:Parameter Name="Fullname" Type="String" />
                                                <asp:Parameter DbType="Date" Name="DOB" />
                                                <asp:Parameter Name="Address" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Img" Type="String" />
                                                <asp:Parameter Name="Username" Type="String" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="New Account" OnClick="Button2_Click" />
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
