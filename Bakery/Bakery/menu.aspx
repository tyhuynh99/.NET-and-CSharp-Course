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
                    <%--<a href="menu.aspx" class="primary-btn squire text-uppercase mt-10">Check Our Menu</a>--%>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
    <!-- Start menu-list Area -->
    <section class="menu-list-area section-gap">
        <div class="container">
            <div class="row">
                <%--Chuyển giữa các Category--%>
                <div class="menu-cat mx-auto">
                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pizza-tab" data-toggle="pill" href="#pizza" role="tab" aria-controls="pizza" aria-selected="true">Pizza</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-bread-tab" data-toggle="pill" href="#pills-bread" role="tab" aria-controls="pills-bread" aria-selected="false">Breads</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-burger-tab" data-toggle="pill" href="#pills-burger" role="tab" aria-controls="pills-burger" aria-selected="false">Burgers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-chicken-tab" data-toggle="pill" href="#pills-chicken" role="tab" aria-controls="pills-chicken" aria-selected="false">Chicken</a>
                        </li>
                    </ul>
                </div>

            </div>
            <div id="pills-tabContent" class="tab-content absolute">

                <%--Tab Cate 1--%>
                <div class="tab-pane fade show active" id="pizza" role="tabpanel" aria-labelledby="pizza-tab">
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/c1.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>15.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button1" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button2" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/c2.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>25.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button3" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button4" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                </div>

                <%--Tab Cate 2--%>
                <div class="tab-pane fade" id="pills-bread" role="tabpanel" aria-labelledby="pills-bread-tab">
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/img/c3.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>15.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button5" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button6" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/img/c4.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>25.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button7" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button8" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                </div>

                <%--Tab Cate 3--%>
                <div class="tab-pane fade" id="pills-burger" role="tabpanel" aria-labelledby="pills-burger-tab">
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image5" runat="server" ImageUrl="~/img/c1.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>15.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button9" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button10" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image6" runat="server" ImageUrl="~/img/c2.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>25.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button11" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button12" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                </div>

                <%--Tab Cate 4--%>
                <div class="tab-pane fade" id="pills-chicken" role="tabpanel" aria-labelledby="pills-chicken-tab">
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/img/c1.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>15.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button13" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button14" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                    <%--Tab chứa sản phẩm--%>
                    <div class="single-menu-list row justify-content-between align-items-center">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Image ID="Image8" runat="server" ImageUrl="~/img/c2.jpg" />
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                <a href="#">
                                    <h4>Pizza Americano</h4>
                                </a>
                                <p>
                                    Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.
                                </p>
                            </div>
                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                <label class="danger">Status: Available</label>
                                <h4>Price: <b>25.000</b></h4>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <asp:Button ID="Button15" runat="server" Text="Buy Now" CssClass="btn btn-success" />
                                <asp:Button ID="Button16" runat="server" Text="Add to Cart" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
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
