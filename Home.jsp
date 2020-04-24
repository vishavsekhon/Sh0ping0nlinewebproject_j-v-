<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Iterator" %>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.1.3
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest (the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>Online Clothes Shopping</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Online Clothes Shopping description" name="description">
  <meta content="Online Clothes Shopping keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="assets/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet">
  <link href="assets/global/plugins/slider-layer-slider/css/layerslider.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="assets/global/css/components.css" rel="stylesheet">
  <link href="assets/frontend/layout/css/style.css" rel="stylesheet">
  <link href="assets/frontend/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="assets/frontend/pages/css/style-layer-slider.css" rel="stylesheet">
  <link href="assets/frontend/layout/css/style-responsive.css" rel="stylesheet">
  <link href="assets/frontend/layout/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="assets/frontend/layout/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <!-- BEGIN STYLE CUSTOMIZER -->
    <div class="color-panel hidden-sm">
      <div class="color-mode-icons icon-color"></div>
      <div class="color-mode-icons icon-color-close"></div>
      <div class="color-mode">
        <p>THEME COLOR</p>
        <ul class="inline">
          <li class="color-red current color-default" data-style="red"></li>
          <li class="color-blue" data-style="blue"></li>
          <li class="color-green" data-style="green"></li>
          <li class="color-orange" data-style="orange"></li>
          <li class="color-gray" data-style="gray"></li>
          <li class="color-turquoise" data-style="turquoise"></li>
        </ul>
      </div>
    </div>
    <!-- END BEGIN STYLE CUSTOMIZER --> 

    <!-- BEGIN TOP BAR -->
     <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>+1 234-567-8901</span></li>
                        <li><i class="fa fa-envelope-o"></i><span>info@onlineclothesshopping.com</span></li>
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                 	<li><a href="ContactUs.jsp">Provide your feedback</a></li>
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
       <div class="header">
      <div class="container">
        <a class="site-logo" height="25%" width="25%" href="index.html"><img src="images/logo.JPG" width="120px;" alt="OnlineShopping"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

         <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit">
          <ul>
            <li class="dropdown">
              <a  data-target="#" href="Home.jsp">
                Home 
                
              </a>             
            </li>
            <li class="dropdown">
              <a  data-target="#" href="Products.jsp">
                Products 
                
              </a>             
            </li> 
			<li class="dropdown">
              <a  data-target="#" href="ContactUs.jsp">
               Contact Us                 
              </a>             
            </li>
			  <% 
                   		if(request.getSession().getAttribute("userid")==null)
						{
                        out.println("<li class='dropdown'><a href='Login.jsp'>Log In</a></li>");
                        out.println("<li class='dropdown'><a href='Register.jsp'>Register </a></li>");
                        } 
                   		else
                   		{
							out.println("<li class='dropdown'><a href='Register.jsp'>Edit Profile</a></li>");
							out.println("<li class='dropdown'><a href='Shoppingcart.jsp'>Shopping Cart</a></li>");
                   			out.println("<li class='dropdown'><a href='logout'>Logout</a></li>");
                   		}
                    %>
			
           
          </ul>
        </div>
        <!-- END NAVIGATION -->
		
		</div>
		</div>
    <!-- Header END -->

    <!-- BEGIN SLIDER -->
    <div class="page-slider margin-bottom-35">
      <!-- LayerSlider start -->
      <div id="layerslider" style="width: 100%; height: 494px; margin: 0 auto;">

        <!-- slide one start -->
        <div class="ls-slide ls-slide1" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 24,25,27,28;">

          <img src="images/amazon_Slide1.jpg" class="ls-bg" alt="Slide background">

          <div class="ls-l ls-title" style="top: 96px; left: 35%; white-space: nowrap;" data-ls="
            fade: true; 
            fadeout: true; 
            durationin: 750; 
            durationout: 750; 
            easingin: easeOutQuint; 
            rotatein: 90; 
            rotateout: -90; 
            scalein: .5; 
            scaleout: .5; 
            showuntil: 4000;
          "></div>

          <div class="ls-l ls-mini-text" style="top: 338px; left: 35%; white-space: nowrap;" data-ls="
          fade: true; 
          fadeout: true; 
          durationout: 750; 
          easingin: easeOutQuint; 
          delayin: 300; 
          showuntil: 4000;
          ">
          </div>
        </div>
        <!-- slide one end -->

        <!-- slide two start -->
        <div class="ls-slide ls-slide2" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 110,111,112,113;">

          <img src="images/amazon_Slide2.jpg" class="ls-bg" alt="Slide background">
          
          <div class="ls-l ls-title" style="top: 40%; left: 21%; white-space: nowrap;" data-ls="
          fade: true; 
          fadeout: true;  
          durationin: 750; durationout: 109750; 
          easingin: easeOutQuint; 
          easingout: easeInOutQuint; 
          delayin: 0; 
          delayout: 0; 
          rotatein: 90; 
          rotateout: -90; 
          scalein: .5; 
          scaleout: .5; 
          showuntil: 4000;
          ">
            </div>

         


        </div>
        <!-- slide two end -->

        <!-- slide three start -->
        <div class="ls-slide ls-slide3" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 92,93,105;">

          <img src="images/amazon_Slide3.jpg" class="ls-bg" alt="Slide background">
          
          <div class="ls-l ls-title" style="top: 83px; left: 33%; white-space: nowrap;" data-ls="
          fade: true; 
          fadeout: true; 
          durationin: 750; 
          durationout: 750; 
          easingin: easeOutQuint; 
          rotatein: 90; 
          rotateout: -90; 
          scalein: .5; 
          scaleout: .5; 
          showuntil: 4000;
          ">
          </div>
          <div class="ls-l" style="top: 333px; left: 33%; white-space: nowrap; font-size: 20px; font: 20px 'Open Sans Light', sans-serif;" data-ls="
          fade: true; 
          fadeout: true; 
          durationout: 750; 
          easingin: easeOutQuint; 
          delayin: 300; 
          scalein: .8; 
          scaleout: .8; 
          showuntil: 4000;
          ">
           
            <div class="ls-price">
            
          </div>
        </div>
        <!-- slide three end -->

        <!-- slide four start -->
        <div class="ls-slide ls-slide4" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 110,111,112,113;">

          <img src="images/amazon_Slide4.jpg" class="ls-bg" alt="Slide background">
          
          <div class="ls-l ls-title" style="top: 35%; left: 60%; white-space: nowrap;" data-ls="
          fade: true; 
          fadeout: true; 
          durationin: 750; 
          durationout: 750; 
          easingin: easeOutQuint; 
          rotatein: 90; 
          rotateout: -90; 
          scalein: .5; 
          scaleout: .5; 
          showuntil: 4000;">
         
          </div>

          <div class="ls-l ls-mini-text" style="top: 70%; left: 60%; white-space: nowrap;" data-ls="
          fade: true; 
          fadeout: true;  
          durationout: 750; 
          easingin: easeOutQuint; 
          delayin: 300; 
          scalein: .8; 
          scaleout: .8; 
          showuntil: 4000;">
          
          </div>

        </div>
        <!-- slide four end -->
      </div>
      <!-- LayerSlider end -->
    </div>
    <!-- END SLIDER -->

    <div class="main">
      <div class="container">
        

        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
		<br/>
		<h2>&nbsp;&nbsp;&nbsp;&nbsp;Sign in for the best experience &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default add2cart" href="#">LogIn</a></h2>
			
                   <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-8">
            
            <div class="owl-carousel owl-carousel3">
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <a href="#"><img src="images/shopCat.jpg" class="img-responsive" alt="Formal Shirt Type ">     </a>               
                  </div>                  
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                     <a href="#"><img src="images/cellphone.jpg" class="img-responsive" alt="Formal Shirt Type ">      </a>              
                  </div>                  
                </div>
              </div>
			   <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                     <a href="#"><img src="images/deals.jpg" class="img-responsive" alt="Formal Shirt Type ">         </a>           
                  </div>                  
                </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
		  <div class="sidebar col-md-3 col-sm-4"> 
<div style="width: 283px;">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <a href="#"><img src="images/shopCat.jpg" class="img-responsive" alt="Formal Shirt Type ">     </a>               
                  </div>                  
                </div>
              </div>
          </div></br><br/>
        </div>
        <!-- END SIDEBAR & CONTENT -->
<hr/>
      <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SALE PRODUCT -->
          <div class="col-md-12 sale-product">
            <h2>New Arrivals</h2>
            <div class="owl-carousel owl-carousel5">
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="images/formalShirt1.jpg" class="img-responsive" alt="Formal Shirt Type ">
                    <div>
                      <a href="images/formalShirt1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Formal Shirt Type 1</a></h3>
                  <div class="pi-price">$30.00</div>
                  <a href="Products.jsp" class="btn btn-default add2cart">View More</a>
                  <div class="sticker sticker-sale"></div>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="images/formalShirt2.jpg" class="img-responsive" alt="Formal Shirt Type ">
                    <div>
                      <a href="images/formalShirt2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Formal Shirt Type 2</a></h3>
                  <div class="pi-price">$30.00</div>
                  <a href="Products.jsp" class="btn btn-default add2cart">View More</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="images/formalShirt6.jpg" class="img-responsive" alt="Formal Shirt Type ">
                    <div>
                      <a href="images/formalShirt6.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Formal Shirt Type 3</a></h3>
                  <div class="pi-price">$30.00</div>
                  <a href="Products.jsp" class="btn btn-default add2cart">View More</a>
                </div>
              </div>
              <div>
                  <div class="product-item">
                    <div class="pi-img-wrapper">
                      <img src="images/formalShirt4.jpg" class="img-responsive" alt="Formal Shirt Type ">
                      <div>
                        <a href="images/formalShirt4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                        
                      </div>
                    </div>
                    <h3><a href="#">Formal Shirt Type 4</a></h3>
                    <div class="pi-price">$30.00</div>
                    <a href="Products.jsp" class="btn btn-default add2cart">View More</a>
                    <div class="sticker sticker-new"></div>
                  </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="images/formalShirt5.jpg" class="img-responsive" alt="Formal Shirt Type ">
                    <div>
                      <a href="images/formalShirt5.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Formal Shirt Type 5</a></h3>
                  <div class="pi-price">$30.00</div>
                  <a href="Products.jsp" class="btn btn-default add2cart">View More</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="images/formalShirt3.jpg" class="img-responsive" alt="Formal Shirt Type ">
                    <div>
                      <a href="images/formalShirt3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                     
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Formal Shirt Type 6</a></h3>
                  <div class="pi-price">$30.00</div>
                  <a href="Products.jsp" class="btn btn-default add2cart">View More</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="images/formalShirt9.jpg" class="img-responsive" alt="Formal Shirt Type ">
                    <div>
                      <a href="images/formalShirt9.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      
                    </div>
                  </div>
                  <h3><a href="shop-item.html">Formal Shirt Type 7</a></h3>
                  <div class="pi-price">$30.00</div>
                  <a href="Products.jsp" class="btn btn-default add2cart">View More</a>
                </div>
              </div>
            </div>
          </div>
          <!-- END SALE PRODUCT -->
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->
      </div>
    </div>

 

    <!-- BEGIN PRE-FOOTER -->
    <div class="pre-footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN BOTTOM ABOUT BLOCK -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>About us</h2>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam sit nonummy nibh euismod tincidunt ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo consequat. </p>
            <p>Duis autem vel eum iriure dolor vulputate velit esse molestie at dolore.</p>
          </div>
          <!-- END BOTTOM ABOUT BLOCK -->
          <!-- BEGIN BOTTOM INFO BLOCK -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>Information</h2>
            <ul class="list-unstyled">
              <li><i class="fa fa-angle-right"></i> <a href="#">Delivery Information</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Customer Service</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Order Tracking</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Shipping &amp; Returns</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="contacts.html">Contact Us</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Careers</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Payment Methods</a></li>
            </ul>
          </div>
          <!-- END INFO BLOCK -->

          <!-- BEGIN TWITTER BLOCK --> 
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2 class="margin-bottom-0">Latest Tweets</h2>
					
          </div>
          <!-- END TWITTER BLOCK -->

          <!-- BEGIN BOTTOM CONTACTS -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>Our Contacts</h2>
            <address class="margin-bottom-40">
              35, Lorem Lis Street, Park Ave<br>
              California, US<br>
              Phone: 300 323 3456<br>
              Fax: 300 323 1456<br>
              Email: <a href="mailto:info@metronic.com">info@metronic.com</a><br>
              Skype: <a href="skype:metronic">metronic</a>
            </address>
          </div>
          <!-- END BOTTOM CONTACTS -->
        </div>
        <hr>
        <div class="row">
          <!-- BEGIN SOCIAL ICONS -->
          <div class="col-md-6 col-sm-6">
            <ul class="social-icons">
              <li><a class="rss" data-original-title="rss" href="#"></a></li>
              <li><a class="facebook" data-original-title="facebook" href="#"></a></li>
              <li><a class="twitter" data-original-title="twitter" href="#"></a></li>
              <li><a class="googleplus" data-original-title="googleplus" href="#"></a></li>
              <li><a class="linkedin" data-original-title="linkedin" href="#"></a></li>
              <li><a class="youtube" data-original-title="youtube" href="#"></a></li>
              <li><a class="vimeo" data-original-title="vimeo" href="#"></a></li>
              <li><a class="skype" data-original-title="skype" href="#"></a></li>
            </ul>
          </div>
          <!-- END SOCIAL ICONS -->
          <!-- BEGIN NEWLETTER -->
          <div class="col-md-6 col-sm-6">
            <div class="pre-footer-subscribe-box pull-right">
              <h2>Newsletter</h2>
              <form action="#">
                <div class="input-group">
                  <input type="text" placeholder="youremail@mail.com" class="form-control">
                  <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">Subscribe</button>
                  </span>
                </div>
              </form>
            </div> 
          </div>
          <!-- END NEWLETTER -->
        </div>
      </div>
    </div>
    <!-- END PRE-FOOTER -->

    <!-- BEGIN FOOTER -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-6 col-sm-6 padding-top-10">
            2014 © Online Clothes Shopping. ALL Rights Reserved. 
          </div>
          <!-- END COPYRIGHT -->
          <!-- BEGIN PAYMENTS -->
          <div class="col-md-6 col-sm-6">
            <ul class="list-unstyled list-inline pull-right">
              <li><img src="assets/frontend/layout/img/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
              <li><img src="assets/frontend/layout/img/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
              <li><img src="assets/frontend/layout/img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
              <li><img src="assets/frontend/layout/img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
              <li><img src="assets/frontend/layout/img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
            </ul>
          </div>
          <!-- END PAYMENTS -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->

   
    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/global/plugins/respond.min.js"></script>  
    <![endif]-->
    <script src="assets/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="assets/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="assets/frontend/layout/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="assets/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='assets/global/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

    <!-- BEGIN LayerSlider -->
    <script src="assets/global/plugins/slider-layer-slider/js/greensock.js" type="text/javascript"></script><!-- External libraries: GreenSock -->
    <script src="assets/global/plugins/slider-layer-slider/js/layerslider.transitions.js" type="text/javascript"></script><!-- LayerSlider script files -->
    <script src="assets/global/plugins/slider-layer-slider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script><!-- LayerSlider script files -->
    <script src="assets/frontend/pages/scripts/layerslider-init.js" type="text/javascript"></script>
    <!-- END LayerSlider -->

    <script src="assets/frontend/layout/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            LayersliderInit.initLayerSlider();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initTwitter();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>