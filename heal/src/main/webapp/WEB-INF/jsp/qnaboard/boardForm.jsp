<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>Hi-camper │ Q&A 등록</title>
		<meta name="description" content="">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- <link rel="manifest" href="site.webmanifest"> -->
		 <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		 <!-- Place favicon.ico in the root directory -->
		
		<!-- CSS here -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="assets/css/slicknav.css">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/magnific-popup.css">
		<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="assets/css/themify-icons.css">
		<link rel="stylesheet" href="assets/css/slick.css">
		<link rel="stylesheet" href="assets/css/nice-select.css">
		<link rel="stylesheet" href="assets/css/style.css">
		<link rel="stylesheet" href="assets/css/responsive.css">
		
		<script>
			$(document).on('click', '#btnSave', function(e){
				e.preventDefault();
				$("#form").submit();
			});
		
			$(document).on('click', '#btnList', function(e){
				e.preventDefault();
				location.href="${pageContext.request.contextPath}/qnaboard/boardList";
			});
		</script>
	</head>

	<body>

   <!-- Preloader Start -->
   <div id="preloader-active">
      <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
               <div class="preloader-circle"></div>
               <div class="preloader-img pere-text">
                  <img src="assets/img/logo/logo.png" alt="">
               </div>
            </div>
      </div>
   </div>
   <!-- Preloader Start-->
   <header>
      <!-- Header Start -->
     <div class="header-area">
          <div class="main-header ">
              <div class="header-top top-bg d-none d-lg-block">
                 <div class="container">
                  <div class="row justify-content-between align-items-center">
                      <div class="col-lg-8">
                          <div class="header-info-left">
                              <ul>                          
                                  <li>needhelp@gotrip.com</li>
                                  <li>666 569 025077</li>
                                  <li>broklyn street new york</li>
                              </ul>
                          </div>
                      </div>
                      <div class="col-lg-4">
                          <div class="header-info-right f-right">
                              <ul class="header-social">    
                                  <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                  <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                  <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                 <li> <a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                              </ul>
                          </div>
                      </div>
                     </div>
                 </div>
              </div>
             <div class="header-bottom  header-sticky">
                  <div class="container">
                      <div class="row align-items-center">
                          <!-- Logo -->
                          <div class="col-xl-2 col-lg-2 col-md-1">
                              <div class="logo">
                                <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                              </div>
                          </div>
                          <div class="col-xl-10 col-lg-10 col-md-10">
                              <!-- Main-menu -->
                              <div class="main-menu f-right d-none d-lg-block">
                                  <nav>               
                                      <ul id="navigation">                                                                                                                                     
                                            <li><a href="../index.jsp">Home</a></li>
                                            <li><a href="#">Map</a>
                                                <ul class="submenu">
                                                    <li><a href="../trail/sidoMap.jsp">sidoMap</a></li>
                                                    <li><a href="../trail/trailMap.jsp">trailMap</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="boardList.jsp">boardList</a></li>
                                        </ul>
                                  </nav>
                              </div>
                          </div>
                          <!-- Mobile Menu -->
                          <div class="col-12">
                              <div class="mobile_menu d-block d-lg-none"></div>
                          </div>
                      </div>
                  </div>
             </div>
          </div>
     </div>
      <!-- Header End -->
  </header>
   <!-- slider Area Start-->
   <div class="slider-area ">
      <!-- Mobile Menu -->
      <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/contact_hero.jpg">
          <div class="container">
              <div class="row">
                  <div class="col-xl-12">
                      <div class="hero-cap text-center">
                          <h2>Q&A 등록</h2>
                      </div>
                  </div>
              </div>
          </div>
      </div>
   </div>
   <!-- slider Area End-->
   <!--================ Form Area =================-->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
      	<form:form name="form" id="form" role="form" modelAttribute="qnaBoard" method="post" action="${pageContext.request.contextPath}/board/saveBoard">
      		<form:hidden path="bid" />
      		<input type="hidden" name="mode" />
		      	<div>
		      		<div class="mt-10">
		      			<input type="text" class="single-input-primary" name="qnaTitle" placeholder="제목" onfocus="this.placeholder = ''" onblur="this.placeholder = '제목'" required>
		      		</div>
		      		<div class="mt-10">
						<textarea class="single-textarea" id="qnaText" placeholder="내용" onfocus="this.placeholder = ''" onblur="this.placeholder = '내용'" required></textarea>
					</div>
		      		<button type="submit" class="button button-contactForm btn_1 boxed-btn" id="btnSave">저장</button>
		      		<button class="button button-contactForm btn_1 boxed-btn" id="btnList">목록</button>
		      	</div>
      	</form:form>
      		
      </div>
   </section>
   
   
   <!--================ Form Area end =================-->

	 <footer>
	    <!-- Footer Start-->
	    <div class="footer-area footer-padding footer-bg" data-background="assets/img/service/footer_bg.jpg">
	        <div class="container">
	            <div class="row d-flex justify-content-between">
	                <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
	                   <div class="single-footer-caption mb-50">
	                     <div class="single-footer-caption mb-30">
	                          <!-- logo -->
	                         <div class="footer-logo">
	                             <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
	                         </div>
	                         <div class="footer-tittle">
	                             <div class="footer-pera">
	                                 <p>Lorem iaspsum doldfor sit amvset, consectetur adipisicing cvelit csed do eiusmod tempor incididucvccnt ut labovre.</p>
	                            </div>
	                         </div>
	                     </div>
	                   </div>
	                </div>
	                <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
	                    <div class="single-footer-caption mb-50">
	                        <div class="footer-tittle">
	                            <h4>Quick Links</h4>
	                            <ul>
	                                <li><a href="#">About</a></li>
	                                <li><a href="#"> Offers & Discounts</a></li>
	                                <li><a href="#"> Get Coupon</a></li>
	                                <li><a href="#">  Contact Us</a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
	                    <div class="single-footer-caption mb-50">
	                        <div class="footer-tittle">
	                            <h4>New Products</h4>
	                            <ul>
	                                <li><a href="#">Woman Cloth</a></li>
	                                <li><a href="#">Fashion Accessories</a></li>
	                                <li><a href="#"> Man Accessories</a></li>
	                                <li><a href="#"> Rubber made Toys</a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
	                    <div class="single-footer-caption mb-50">
	                        <div class="footer-tittle">
	                            <h4>Support</h4>
	                            <ul>
	                             <li><a href="#">Frequently Asked Questions</a></li>
	                             <li><a href="#">Terms & Conditions</a></li>
	                             <li><a href="#">Privacy Policy</a></li>
	                             <li><a href="#">Privacy Policy</a></li>
	                             <li><a href="#">Report a Payment Issue</a></li>
	                         </ul>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!-- Footer bottom -->
	            <div class="row pt-padding">
	             <div class="col-xl-7 col-lg-7 col-md-7">
	                <div class="footer-copy-right">
	                     <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	                </div>
	             </div>
	              <div class="col-xl-5 col-lg-5 col-md-5">
	                    <!-- social -->
	                    <div class="footer-social f-right">
	                        <a href="#"><i class="fab fa-twitter"></i></a>
	                        <a href="#"><i class="fab fa-facebook-f"></i></a>
	                        <a href="#"><i class="fab fa-behance"></i></a>
	                        <a href="#"><i class="fas fa-globe"></i></a>
	                    </div>
	             </div>
	         </div>
	        </div>
	    </div>
	    <!-- Footer End-->
	</footer>
   
	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
</body>
</html>