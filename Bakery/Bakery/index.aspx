<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Bakery.index" %>

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
                    <h1>Love with baking items			
                    </h1>
                    <p class="text-white mx-auto">
                        Since Americans in the South began roasting pigs publicly, Barbecues have been a staple of North American living. For many, grilling becomes a routine mealtime activity.
                    </p>
                    <a href="menu.aspx" class="primary-btn squire text-uppercase mt-10">Check Our Menu</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
    <!-- Start home-about Area -->
    <section class="home-about-area section-gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <h6 class="text-uppercase">Brand new app to blow your mind</h6>
                    <h1>We’ve baked every item
						from the core of our heart to serve you
                    </h1>
                    <p>
                        <span>We are here to listen from you deliver exellence by any means</span>
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temp or incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temp or incididunt ut labore et dolore magna aliqua. Ut enim ad minim.
                    </p>
                    <a class="primary-btn squire mx-auto mt-20" href="about.aspx">More about us</a>
                </div>
            </div>
        </div>
        <img class="about-img" src="img/about-img.png" alt="About Image">
    </section>
    <!-- End home-about Area -->
    <!-- Start item-category Area -->
    <section class="item-category-area section-gap">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12 pb-80 header-text text-center">
                    <h1 class="pb-10">Category of available items</h1>
                    <p>
                        They are grilling celebrities in their own right.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/c1.jpg" alt="">
                        </div>
                        <a href="menu.aspx">
                            <h4>Pizza</h4>
                        </a>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/c2.jpg" alt="">
                        </div>
                        <a href="menu.aspx">
                            <h4>Bread</h4>
                        </a>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/c3.jpg" alt="">
                        </div>
                        <a href="menu.aspx">
                            <h4>Burgers</h4>
                        </a>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/c4.jpg" alt="">
                        </div>
                        <a href="menu.aspx">
                            <h4>Chicken</h4>
                        </a>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                    </div>
                </div>
                <a class="primary-btn mx-auto mt-80" href="menu.aspx">View Full Menu</a>
            </div>
        </div>
    </section>
    <!-- End item-category Area -->
    <!-- Start review Area -->
    <section class="review-area section-gap relative">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-9 pb-40 header-text text-center">
                    <h1 class="pb-10 text-white">Enjoy our Client’s Review</h1>
                    <p>
                        Who are in extremely love with eco friendly system.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="active-review-carusel">
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End review Area -->
</asp:Content>
