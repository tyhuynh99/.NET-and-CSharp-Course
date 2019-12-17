<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="check_out.aspx.cs" Inherits="Bakery.WebForm3" %>

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
                    <h1>Check out
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
                <div class="row">
                    <div id="checkout" class="col-lg-9">
                        <%--Address box--%>
                        <div class="box">
                            <h1>Order Information</h1>
                            <form method="get" action="#">
                                <div class="nav flex-column flex-sm-row nav-pills">
                                    <a href="#" class="nav-link flex-sm-fill text-sm-center active"><i class="fa fa-map-marker"></i>Address</a>
                                    <a href="#" class="nav-link flex-sm-fill text-sm-center"><i class="fa fa-money"></i>Payment Method</a>
                                    <a href="#" class="nav-link flex-sm-fill text-sm-center"> <i class="fa fa-eye"></i>Order Review</a>
                                </div>
                                <div class="content py-3">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="firstname">Firstname</label>
                                                <input id="firstname" type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="lastname">Lastname</label>
                                                <input id="lastname" type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row-->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="company">Company</label>
                                                <input id="company" type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="street">Street</label>
                                                <input id="street" type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row-->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="phone">Telephone</label>
                                                <input id="phone" type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input id="email" type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row-->
                                </div>
                            </form>
                        </div>
                        <%--Payment box--%>
                        <div class="box">
                            <h1>Payment method</h1>
                            <div class="nav flex-column flex-sm-row nav-pills">
                                <a href="#" class="nav-link flex-sm-fill text-sm-center"><i class="fa fa-map-marker"></i>Address</a>
                                <a href="#" class="nav-link flex-sm-fill text-sm-center active"><i class="fa fa-money"></i>Payment Method</a>
                                <a href="#" class="nav-link flex-sm-fill text-sm-center"> <i class="fa fa-eye"></i>Order Review</a>
                            </div>
                            <div class="content py-3">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="box payment-method">
                                            <h4>Paypal</h4>
                                            <p>We like it all.</p>
                                            <div class="box-footer text-center">
                                                <input type="radio" name="payment" value="payment1">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="box payment-method">
                                            <h4>Payment gateway</h4>
                                            <p>VISA and Mastercard only.</p>
                                            <div class="box-footer text-center">
                                                <input type="radio" name="payment" value="payment2">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="box payment-method">
                                            <h4>Cash on delivery</h4>
                                            <p>You pay when you get it.</p>
                                            <div class="box-footer text-center">
                                                <input type="radio" name="payment" value="payment3">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row-->
                            </div>
                            <!-- /.content-->
                            <!-- /.box-->
                        </div>
                        <%--Preview box--%>
                        <div class="box ">
                            <h1>Order review</h1>
                            <div class="nav flex-column flex-sm-row nav-pills">
                                <a href="#" class="nav-link flex-sm-fill text-sm-center"><i class="fa fa-map-marker"></i>Address</a>
                                <a href="#" class="nav-link flex-sm-fill text-sm-center "><i class="fa fa-money"></i>Payment Method</a>
                                <a href="#" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-eye"></i>Order Review</a>
                            </div>
                            <div class="content">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Product</th>
                                                <th>Quantity</th>
                                                <th>Unit price</th>
                                                <th>Discount</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="#">
                                                    <img src="img/detailsquare.jpg" alt="White Blouse Armani"></a></td>
                                                <td><a href="#">White Blouse Armani</a></td>
                                                <td>2</td>
                                                <td>$123.00</td>
                                                <td>$0.00</td>
                                                <td>$246.00</td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">
                                                    <img src="img/basketsquare.jpg" alt="Black Blouse Armani"></a></td>
                                                <td><a href="#">Black Blouse Armani</a></td>
                                                <td>1</td>
                                                <td>$200.00</td>
                                                <td>$0.00</td>
                                                <td>$200.00</td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">Total</th>
                                                <th>$446.00</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- /.table-responsive-->
                            </div>
                            <!-- /.content-->
                            <div class="box-footer d-flex justify-content-between">
                                <a href="#" class="btn btn-primary">Place an order<i class="fa fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <%--=====================Summary Order===================--%>
                    <div class="col-lg-3">
                        <div id="order-summary" class="card">
                            <div class="card-header">
                                <h3 class="mt-4 mb-4">Order summary</h3>
                            </div>
                            <div class="card-body">
                                <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>Order subtotal</td>
                                                <th>$446.00</th>
                                            </tr>
                                            <tr>
                                                <td>Shipping and handling</td>
                                                <th>$10.00</th>
                                            </tr>
                                            <tr>
                                                <td>Tax</td>
                                                <th>$0.00</th>
                                            </tr>
                                            <tr class="total">
                                                <td>Total</td>
                                                <th>$456.00</th>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
