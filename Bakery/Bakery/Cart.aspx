<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Bakery.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="checkout-resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="checkout-resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="checkout-resource/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="checkout-resource/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="checkout-resource/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="checkout-resource/css/custom.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start banner Area -->
    <section class="banner-area relative" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row fullscreen d-flex justify-content-center align-items-center">
                <div class="banner-content col-lg-10 col-md-12 justify-content-center">
                    <h6 class="text-uppercase">Whenever we bake, bake with our heart</h6>
                    <h1>Shopping Cart
                    </h1>
                    <p class="text-white mx-auto">
                        Since Americans in the South began roasting pigs publicly, Barbecues have been a staple of North American living. For many, grilling becomes a routine mealtime activity.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
    <div id="all">
        <div id="content">
            <div class="container">
                <div class="form-group mt-15">
                    <div class="row">
                        <div id="basket" class="col-lg-9">
                            <div class="box">
                                <p class="text-muted">You currently have <%= cartObj.cart.Count %> item(s) in your cart.</p>
                                <% if (cartObj.cart.Count > 0)
                                    { %>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Product</th>
                                                <th>Quantity</th>
                                                <th>Unit price</th>
                                                <th>Total</th>
                                                <th>Remove</th>
                                                <th>Update</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:ListView ID="lvCart" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><a href="#">
                                                            <%-- <asp:Image ID="Image1" runat="server" ImageUrl="<%# Eval("Key.ImgUrl") %>" AlternateText="<%# Eval("Key.ProName") %>" />--%>
                                                            <img src="<%# Eval("Key.ImgUrl") %>" alt="<%# Eval("Key.ProName") %>"></a>
                                                        </td>
                                                        <td><a href="#"><%# Eval("Key.ProName") %></a></td>
                                                        <td>
                                                            <input name='quantity<%# Eval("Key.ProID") %>' id='quantity<%# Eval("Key.ProID") %>' type="number" min="0"
                                                                value='<%# Eval("Value") %>' />
                                                        </td>
                                                        <td>$<%# Eval("Key.Price") %></td>
                                                        <td><%#String.Format("{0:c}", Convert.ToDecimal(Eval("Key.Price")) * Convert.ToInt32(Eval("Value"))) %></td>
                                                        <td>
                                                            <asp:HiddenField ID="txtProductID" runat="server" Value='<%# Eval("Key.ProID") %>' />
                                                            <asp:LinkButton ID="LinkRemove" runat="server" OnClick="LinkRemove_Click">
                                                            <i class="fa fa-trash-o"></i>
                                                            </asp:LinkButton>
                                                        </td>
                                                        <td>
                                                            <asp:LinkButton CssClass="btn btn-outline-secondary" ID="linkUpdate" runat="server" OnClick="linkUpdate_Click">Update</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">Total</th>
                                                <th colspan="2">$<%= total %></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- /.table-responsive-->
                                <div class="box-footer d-flex justify-content-between flex-column flex-lg-row">
                                    <div class="left"><a href="menu.aspx" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Continue shopping</a></div>
                                    <div class="right">
                                        <a href="check_out.aspx" class="btn btn-primary">Proceed to checkout</a>
                                    </div>
                                </div>
                                <%}
                                    else
                                    {%>
                                <h1>NO PRODUCT IN CART</h1>
                                <a href="menu.aspx" class="btn btn-primary"><i class="fa fa-cart-plus"></i>Buy more product</a>
                                <%
                                    }%>
                            </div>
                        </div>
                        <!-- /.col-lg-9-->
                        <%--Right--%>
                        <div class="col-lg-3">
                            <%--Order summary--%>
                            <div id="order-summary" class="box">
                                <div class="box-header">
                                    <h3 class="mb-0">Order summary</h3>
                                </div>
                                <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>Order subtotal</td>
                                                <th>$<%= total %></th>
                                            </tr>
                                            <tr>
                                                <td>Shipping and handling</td>
                                                <th>$10.00</th>
                                            </tr>
                                            <tr>
                                                <td>Tax</td>
                                                <th>$<%= tax %></th>
                                            </tr>
                                            <tr class="total">
                                                <td>Total</td>
                                                <th>$<%= BillTotal %></th>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <%--./Order summary--%>
                            <%--Coupon code--%>
                            <%--<div class="box">
                            <div class="box-header">
                                <h4 class="mb-0">Coupon code</h4>
                            </div>
                            <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>
                            <form>
                                <div class="input-group">
                                    <input type="text" class="form-control"><span class="input-group-append">
                                        <button type="button" class="btn btn-primary"><i class="fa fa-gift"></i></button>
                                    </span>
                                </div>
                            </form>
                        </div>--%>
                            <%--./Coupon code--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
