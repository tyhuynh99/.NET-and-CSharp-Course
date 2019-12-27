<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="Bakery.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start banner Area -->
    <section class="banner-area relative" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row fullscreen d-flex justify-content-center align-items-center">
                <div class="banner-content col-lg-10 col-md-12 justify-content-center">
                    <h6 class="text-uppercase">Whenever we bake, bake with our heart</h6>
                    <h1>Menu		
                    </h1>
                    <p class="text-white mx-auto">
                        Since Americans in the South began roasting pigs publicly, Barbecues have been a staple of North American living. For many, grilling becomes a routine mealtime activity.
                    </p>
                    <%--Burger Tab--%>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
    <!-- Start menu-list Area -->
    <section class="menu-list-area section-gap">
        <div class="container">
            <div class="row">
                <%--DataList--%>
                <div class="menu-cat mx-auto">
                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pizza-tab" data-toggle="pill" href="#pizza" role="tab" aria-controls="pizza" aria-selected="true">Pizza</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-bread-tab" data-toggle="pill" href="#pills-bread" role="tab" aria-controls="pills-bread" aria-selected="false">Bread</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-burger-tab" data-toggle="pill" href="#pills-burger" role="tab" aria-controls="pills-burger" aria-selected="false">Burger</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-chicken-tab" data-toggle="pill" href="#pills-chicken" role="tab" aria-controls="pills-chicken" aria-selected="false">Chicken</a>
                        </li>
                    </ul>
                </div>

            </div>
            <!-- Product Items -->



            <div id="pills-tabContent" class="tab-content absolute">
                <%--PIZZA Tab--%>
                <div class="tab-pane fade show active" id="pizza" role="tabpanel" aria-labelledby="pizza-tab">
                    <%--DataList--%>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <%--justify-content-between row  align-items-center--%>
                            <div class="single-menu-list ">
                                <div class="row">
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <asp:Image ID="Image10" runat="server" ImageUrl='<%# Bind("imgUrl") %>' />
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                        <a href="#">
                                            <h4>
                                                <asp:Label ID="txtProName" runat="server" Text='<%# Bind("ProName") %>'></asp:Label>    
                                            </h4>
                                        </a>
                                        <p>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProId") %>'></asp:Label>
                                            </br>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                        <label class="danger">
                                            Available:
                                        <asp:Label ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                        </label>
                                        &nbsp;<h4>Price: <b>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label></b></h4>
                                        <p>Amount:</p>
                                        <asp:TextBox ID="Amount" runat="server"></asp:TextBox>


                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">

                                        <asp:Button ID="BtnAdd" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart1" />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>" SelectCommand="SELECT [ProId], [ProName], [Price], [ImgUrl], [Description], [Quantity] FROM [Product] WHERE ([CategoryId] = @CategoryId) AND ([Status] = 'Available')" ProviderName="System.Data.SqlClient">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="pizza" Name="CategoryId" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <%--BREAD Tab--%>
                <div class="tab-pane fade" id="pills-bread" role="tabpanel" aria-labelledby="pills-bread-tab">
                    <%--DataList--%>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="DataList2_ItemCommand">
                        <ItemTemplate>
                            <%--row justify-content-between align-items-center--%>
                            <div class="single-menu-list ">
                                <div class="row">
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <asp:Image ID="Image10" runat="server" ImageUrl='<%# Bind("imgUrl") %>' />
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                        <a href="#">
                                            <h4>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProName") %>'></asp:Label></h4>
                                        </a>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProId") %>'></asp:Label>
                                        <p>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                        <label class="danger">
                                            Available:
                                        <asp:Label ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                        </label>
                                        &nbsp;
                                        <h4>Price: <b>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label></b></h4>
                                        <p>
                                            Amount:
                                            <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                                        </p>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <asp:Button ID="Button2" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart2"  />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>" SelectCommand="SELECT [ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [Quantity] FROM [Product] WHERE ([CategoryId] = @CategoryId) AND ([Status] = 'Available')">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="bread" Name="CategoryId" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <%--BURGER Tab--%>
                <div class="tab-pane fade" id="pills-burger" role="tabpanel" aria-labelledby="pills-burger-tab">
                    <%--DataList--%>

                    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="DataList3_ItemCommand">
                        <ItemTemplate>
                            <%--row justify-content-between align-items-center--%>
                            <div class="single-menu-list ">
                                <div class="row">
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <asp:Image ID="Image10" runat="server" ImageUrl='<%# Bind("imgUrl") %>' />
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                        <a href="#">
                                            <h4>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProName") %>'></asp:Label></h4>
                                        </a>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProId") %>'></asp:Label>
                                        <p>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                        <label class="danger">
                                            Available:
                                        <asp:Label ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                        </label>
                                        &nbsp;
                                        <h4>Price: <b>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label></b></h4>
                                        <p>
                                            Amount:
                                             <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                                        </p>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <asp:Button ID="Button2" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart3" />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BakeryConnectionString %>" SelectCommand="SELECT [ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [Quantity] FROM [Product] WHERE ([CategoryId] = @CategoryId) AND ([Status] = 'Available')">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="burger" Name="CategoryId" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <%--Chicken Tab--%>
                <div class="tab-pane fade" id="pills-chicken" role="tabpanel" aria-labelledby="pills-chicken-tab">
                    <%--DataList--%>
                    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4" OnItemCommand="DataList4_ItemCommand">
                        <ItemTemplate>
                            <%--row justify-content-between align-items-center--%>
                            <div class="single-menu-list ">
                                <div class="row">
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <asp:Image ID="Image10" runat="server" ImageUrl='<%# Bind("imgUrl") %>' />
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                        <a href="#">
                                            <h4>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProName") %>'></asp:Label></h4>
                                        </a>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProId") %>'></asp:Label>
                                        <p>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                        <label class="danger">
                                            Available:
                                        <asp:Label ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                        </label>
                                        &nbsp;
                                        <h4>Price: <b>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label></b></h4>
                                        <p>
                                            Amount:
                                            <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                                        </p>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <asp:Button ID="Button2" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart4"/>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>" SelectCommand="SELECT [ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [Quantity] FROM [Product] WHERE ([CategoryId] = @CategoryId) AND ([Status] = 'Available')">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="chicken" Name="CategoryId" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </section>
    <!-- End menu-list Area -->
    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/easing.min.js"></script>
    <script src="js/hoverIntent.js"></script>
    <script src="js/superfish.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/main.js"></script>
</asp:Content>
