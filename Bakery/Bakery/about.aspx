<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Bakery.about" %>

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
                    <h1>About us			
                    </h1>
                    <p class="text-white mx-auto">
                        Since Americans in the South began roasting pigs publicly, Barbecues have been a staple of North American living. For many, grilling becomes a routine mealtime activity.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
    <!-- Start team Area -->
    <section class="team-area section-gap" id="team">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="menu-content pb-70 col-lg-8">
                    <div class="title text-center">
                        <h1 class="mb-10">Meet Our Qualified Chefs</h1>
                        <p>Who are in extremely love with eco friendly system.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center d-flex align-items-center">
                <div class="col-lg-3 col-md-6 single-team">
                    <div class="thumb">
                        <img class="img-fluid" src="img/t1.jpg" alt="">
                        <div class="align-items-center justify-content-center d-flex">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <div class="meta-text mt-30 text-center">
                        <h4>Ethel Davis</h4>
                        <p>Head chef (cutting)</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-team">
                    <div class="thumb">
                        <img class="img-fluid" src="img/t2.jpg" alt="">
                        <div class="align-items-center justify-content-center d-flex">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <div class="meta-text mt-30 text-center">
                        <h4>Rodney Cooper</h4>
                        <p>Head chef (Herb specialist)</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-team">
                    <div class="thumb">
                        <img class="img-fluid" src="img/t3.jpg" alt="">
                        <div class="align-items-center justify-content-center d-flex">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <div class="meta-text mt-30 text-center">
                        <h4>Dora Walker</h4>
                        <p>Senior Chef (Curry)</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-team">
                    <div class="thumb">
                        <img class="img-fluid" src="img/t4.jpg" alt="">
                        <div class="align-items-center justify-content-center d-flex">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <div class="meta-text mt-30 text-center">
                        <h4>Lena Keller</h4>
                        <p>Head Chef (Steak)</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End team Area -->
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
                    <%--<a class="primary-btn squire mx-auto mt-20" href="#">Get Started Now</a>	--%>
                </div>
            </div>
        </div>
        <img class="about-img" src="img/about-img.png" alt="about-img">
    </section>
    <!-- End home-about Area -->

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

    <!-- Start about-video Area -->
    <section class="about-video-area section-gap">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 about-video-left">
                    <h6 class="text-uppercase">Brand new app to blow your mind</h6>
                    <h1>We’ve made a life
                        <br>
                        that will change you 
                    </h1>
                    <p>
                        <span>We are here to listen from you deliver exellence</span>
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmo d tempor incididunt ut labore et dolore magna aliqua.
                    </p>
                    <%--<a class="primary-btn" href="#">Get Started Now</a>--%>
                </div>
                <div class="col-lg-6 about-video-right justify-content-center align-items-center d-flex">
                    <a class="play-btn" href="https://www.youtube.com/watch?v=ARA0AxrnHdM">
                        <img class="img-fluid mx-auto" src="img/play.png" alt=""></a>
                </div>
            </div>
        </div>
    </section>
    <!-- End about-video Area -->
</asp:Content>
