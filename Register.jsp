<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
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
  <title>Create new account | Metronic Frontend</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
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
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="assets/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="assets/global/css/components.css" rel="stylesheet">
  <link href="assets/frontend/layout/css/style.css" rel="stylesheet">
  <link href="assets/frontend/layout/css/style-responsive.css" rel="stylesheet">
  <link href="assets/frontend/layout/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="assets/frontend/layout/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="corporate">
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

   
    <!-- Header END -->

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="#">Pages</a></li>
            <li class="active">Create new account</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-3">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Login/Register</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Restore Password</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> My account</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Address book</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Wish list</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Returns</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Newsletter</a></li>
            </ul>
          </div>
          <!-- END SIDEBAR -->

          <!-- BEGIN CONTENT -->
           <%  
				   if(request.getSession().getAttribute("userid") == null)
				   { 
					   out.println("<div class='col-md-9 col-sm-9'>");
					   out.println("           <h1>Create an account</h1>");
					    out.println("          <div class='content-form-page'>");
					   out.println("             <div class='row'>");
					    out.println("              <div class='col-md-7 col-sm-7'>");
					    out.println("               <form class='form-horizontal' role='form' method='POST'action ='Register'>");
					     out.println("                 <fieldset>");
					  out.println("<legend>Your personal details</legend>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='firstname' class='col-lg-4 control-label'>First Name <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control' name='firstname'>");
					  out.println("  </div>");
					  out.println("</div>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Last Name <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control' name='lastname'>");
					  out.println("  </div>");
					  out.println("</div>");
					  	out.println("				   <div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Age <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type = 'text' name ='age' class='form-control'/>");
					  out.println("  </div>");
					  out.println("</div>");
					  	out.println("				  <div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Address <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type = 'text' name ='address' class='form-control'/>");
					  out.println("  </div>");
					  out.println("</div>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='email' class='col-lg-4 control-label'>Email <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control' name='email' class='form-control'>");
					  out.println("  </div>");
					  out.println("</div>");
					  					  
					              out.println("        </fieldset>");
					  					
					              out.println("        <fieldset>");
					  out.println("<legend>Create your Credentials</legend>");
					  		out.println("<div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Username <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type = 'text' name ='username' class='form-control'/>");
					  out.println("  </div>");
					  out.println("</div>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='password' class='col-lg-4 control-label'>Password <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control' name='password'>");
					  out.println("  </div>");
					  out.println("</div>");                   
					                  out.println("    </fieldset>");
					                     
					                  out.println("    <div class='row'>");
					  out.println("<div class='col-lg-8 col-md-offset-4 padding-left-0 padding-top-20'>"); 
					  out.println("  <button type='submit' class='btn btn-primary'>Create an account</button>");
					  out.println("  <button type='button' class='btn btn-default'>Cancel</button>");
					  out.println("</div>");
					                   out.println("   </div>");
					                  out.println("  </form>");
					                  out.println("</div>");
					                 out.println(" <div class='col-md-4 col-sm-4 pull-right'>");
					                   out.println(" <div class='form-info'>");
					                    out.println("<h2><em>Important</em> Information</h2>");
					           out.println("<p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed sit nonumy nibh sed euismod ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo quat.</p>");

					           out.println("<p>Duis autem vel eum iriure at dolor vulputate velit esse vel molestie at dolore.</p>");

					           out.println("<button type='button' class='btn btn-default'>More details</button>");
					         out.println(" </div>");
					        out.println("</div>");
					  out.println(" </div>");
					  out.println("</div>");
					  out.println("</div>");
				   }
				   else
				   { 
					   int usrid = (int)request.getSession().getAttribute("userid");
					   Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection con = null;
						con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234"); 
						PreparedStatement stmt = null;
						ResultSet result = null;
						try {
							stmt = con.prepareStatement("select * from registeruser where userid=?");							
							stmt.setInt(1,usrid);
							result = stmt.executeQuery();
							if(!result.isBeforeFirst()) {
								out.println("<h1> No Entries Found </h1>");
								} 
						else {						
							while(result.next()) {
					   out.println("<div class='col-md-9 col-sm-9'>");
					   out.println("           <h1>Update your account</h1>");
					    out.println("          <div class='content-form-page'>");
					   out.println("             <div class='row'>");
					    out.println("              <div class='col-md-7 col-sm-7'>");
					    out.println("               <form class='form-horizontal' role='form' method='POST'action ='Register'>");
					     out.println("                 <fieldset>");
					  out.println("<legend>Your personal details</legend>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='firstname' class='col-lg-4 control-label'>First Name <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control' value='"+result.getString("firstname")+"' name='firstname'>");
					  out.println("  </div>");
					  out.println("</div>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Last Name <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control'  value='"+result.getString("lastname")+"'  name='lastname'>");
					  out.println("  </div>");
					  out.println("</div>");
					  	out.println("				   <div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Age <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type = 'text' name ='age'  value='"+result.getString("age")+"'  class='form-control'/>");
					  out.println("  </div>");
					  out.println("</div>");
					  	out.println("				  <div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Address <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type = 'text' name ='address'  value='"+result.getString("address")+"'  class='form-control'/>");
					  out.println("  </div>");
					  out.println("</div>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='email' class='col-lg-4 control-label'>Email <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control'  value='"+result.getString("emailid")+"'  name='email' class='form-control'>");
					  out.println("  </div>");
					  out.println("</div>");
					  					  
					              out.println("        </fieldset>");
					  					
					              out.println("        <fieldset>");
					  out.println("<legend>Create your Credentials</legend>");
					  		out.println("<div class='form-group'>");
					  out.println("  <label for='lastname' class='col-lg-4 control-label'>Username <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type = 'text' name ='username'  value='"+result.getString("username")+"'  class='form-control'/>");
					  out.println("  </div>");
					  out.println("</div>");
					  out.println("<div class='form-group'>");
					  out.println("  <label for='password' class='col-lg-4 control-label'>Password <span class='require'>*</span></label>");
					  out.println("  <div class='col-lg-8'>");
					  out.println("    <input type='text' class='form-control'  value='"+result.getString("password")+"'  name='password'>");
					  out.println("  </div>");
					  out.println("</div>");                   
					                  out.println("    </fieldset>");
					                     
					                  out.println("    <div class='row'>");
					  out.println("<div class='col-lg-8 col-md-offset-4 padding-left-0 padding-top-20'>"); 
					  out.println("  <button type='submit' class='btn btn-primary'>Update your account detail</button>");
					  out.println("  <button type='button' class='btn btn-default'>Cancel</button>");
					  out.println("</div>");
					                   out.println("   </div>");
					                  out.println("  </form>");
					                  out.println("</div>");
					                 out.println(" <div class='col-md-4 col-sm-4 pull-right'>");
					                   out.println(" <div class='form-info'>");
					                    out.println("<h2><em>Important</em> Information</h2>");
					           out.println("<p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed sit nonumy nibh sed euismod ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo quat.</p>");

					           out.println("<p>Duis autem vel eum iriure at dolor vulputate velit esse vel molestie at dolore.</p>");

					           out.println("<button type='button' class='btn btn-default'>More details</button>");
					         out.println(" </div>");
					        out.println("</div>");
					  out.println(" </div>");
					  out.println("</div>");
					  out.println("</div>");
							}
							
						}
					} catch(Exception e) {throw e;}
					finally {
							try {
									if(stmt != null)
										stmt.close();
										if(con != null)
											con.close();
								} 
								catch(SQLException e) 
								{
									e.printStackTrace();
								}
							}	
				   }
			%>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>

    <!-- BEGIN PRE-FOOTER -->
    <div class="pre-footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN BOTTOM ABOUT BLOCK -->
          <div class="col-md-4 col-sm-6 pre-footer-col">
            <h2>About us</h2>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam sit nonummy nibh euismod tincidunt ut laoreet dolore magna aliquarm erat sit volutpat.</p>

            <div class="photo-stream">
              <h2>Photos Stream</h2>
              <ul class="list-unstyled">
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/people/img5-small.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img1.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/people/img4-large.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img6.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img3.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/people/img2-large.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img2.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img5.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/people/img5-small.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img1.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/people/img4-large.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img6.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img3.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/people/img2-large.jpg"></a></li>
                <li><a href="#"><img alt="" src="assets/frontend/pages/img/works/img2.jpg"></a></li>
              </ul>                    
            </div>
          </div>
          <!-- END BOTTOM ABOUT BLOCK -->

          <!-- BEGIN BOTTOM CONTACTS -->
          <div class="col-md-4 col-sm-6 pre-footer-col">
            <h2>Our Contacts</h2>
            <address class="margin-bottom-40">
              35, Lorem Lis Street, Park Ave<br>
              California, US<br>
              Phone: 300 323 3456<br>
              Fax: 300 323 1456<br>
              Email: <a href="mailto:info@metronic.com">info@metronic.com</a><br>
              Skype: <a href="skype:metronic">metronic</a>
            </address>

            <div class="pre-footer-subscribe-box pre-footer-subscribe-box-vertical">
              <h2>Newsletter</h2>
              <p>Subscribe to our newsletter and stay up to date with the latest news and deals!</p>
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
          <!-- END BOTTOM CONTACTS -->

          <!-- BEGIN TWITTER BLOCK --> 
          <div class="col-md-4 col-sm-6 pre-footer-col">
            <h2 class="margin-bottom-0">Latest Tweets</h2>
            <a class="twitter-timeline" href="https://twitter.com/twitterapi" data-tweet-limit="2" data-theme="dark" data-link-color="#57C8EB" data-widget-id="455411516829736961" data-chrome="noheader nofooter noscrollbar noborders transparent">Loading tweets by @keenthemes...</a>
          </div>
          <!-- END TWITTER BLOCK -->
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
            2014 © Metronic Shop UI. ALL Rights Reserved. <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
          </div>
          <!-- END COPYRIGHT -->
          <!-- BEGIN PAYMENTS -->
          <div class="col-md-6 col-sm-6">
            <ul class="social-footer list-unstyled list-inline pull-right">
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
              <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-skype"></i></a></li>
              <li><a href="#"><i class="fa fa-github"></i></a></li>
              <li><a href="#"><i class="fa fa-youtube"></i></a></li>
              <li><a href="#"><i class="fa fa-dropbox"></i></a></li>
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
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="assets/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

    <script src="assets/frontend/layout/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initUniform();
            Layout.initTwitter();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>