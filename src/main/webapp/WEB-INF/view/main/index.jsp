<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>PINGLE</title> 
 
<!-- Bootstrap core CSS -->
<link href="../testcss/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<!-- Custom styles for this template -->
<link href="../testcss/css/owl.carousel.css" rel="stylesheet">
<link href="../testcss/css/owl.theme.default.min.css"  rel="stylesheet">
<link href="../testcss/css/style.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<script src="../testcss/js/ie-emulation-modes-warning.js"></script>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  
<!-- 사용자 후기 -->  
  <!-- Google Fonts --> 
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
  <!-- Bootstrap CSS File -->
  <link href="../reviewcss/lib/bootstarp/css/bootstrap.min.css" rel="stylesheet">
    
  <!-- Libraries CSS Files --> 
  <link href="../reviewcss/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../reviewcss/lib/font-awesome/css/animate.min.css" rel="stylesheet"> 
  <link href="../reviewcss/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="../reviewcss/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="../reviewcss/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
 
  <!-- Main Stylesheet File -->
  <link href="../reviewcss/css/style.css" rel="stylesheet"> 
<!-- 그래프 -->    
  <!-- Bootstrap CSS File -->
  <link href="../graphcss/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="../graphcss/lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
  <link href="../graphcss/lib/animate/animate.min.css" rel="stylesheet">
  <link href="../graphcss/lib/venobox/venobox.css" rel="stylesheet">

  <!-- Nivo Slider Theme -->
  <link href="../graphcss/css/nivo-slider-theme.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="../graphcss/css/style.css" rel="stylesheet">

  <!-- Responsive Stylesheet File -->
  <link href="../graphcss/css/responsive.css" rel="stylesheet">
 
<!-- 사용설명 -->
  <!-- Bootstrap CSS File -->
  <link href="../explain/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="../explain/lib/animate/animate.min.css" rel="stylesheet">
  <link href="../explain/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="../explain/css/style.css" rel="stylesheet">

<!-- 테스트 -->


</head>

   <body id="page-top">
      <!-- Header -->
      <header> 
         <div class="container">
            <div class="slider-container">
               <div class="intro-text">
                  <div class="intro-lead-in">Welcome To Our Studio!</div>
                  <div class="intro-heading">It's Nice To Meet You</div>
                  <a href="${path}/login/login.shop" class="page-scroll btn_8 btn-xl_s">시작하기</a>
               </div> 
            </div>   
         </div>
      </header> 
         
      <!-- 사용자 후기 -->
    <section id="testimonials" class="section-bg wow fadeInUp">
      <div class="container1">
 
          <style>
            #hu {
               text-align: center;
               font-family: 'Poor Story', cursive; 
               font-size: 45px;
               margin-bottom: 70px;
               }
         </style>
           
         <h3 id="hu">후 기</h3>

        <div class="owl-carousel testimonials-carousel">
      <c:forEach var="blist" items="${blist}">
          <div class="testimonial-item">
            <img src="${path}/login/img/${blist.user.profileurl1}" class="testimonial-img" alt="">
            <h3>${blist.user.id}</h3>      
            <h4>${blist.user.age}</h4>
            <p>
              <img src="../reviewcss/img/quote-sign-left.png" class="quote-sign-left" alt="">
              ${blist.boardcontent}
              <img src="../reviewcss/img/quote-sign-right.png" class="quote-sign-right" alt="">
            </p>
          </div>
          </c:forEach>

          
        </div>

      </div>
    </section><!-- #testimonials -->

   <!-- /후기 -->


   <!-- 그래프 -->
<div class="our-skill-area fix hidden-sm">
    <div class="test-overly"></div>
    <div class="skill-bg area-padding-2">
      <div class="container">
        <!-- section-heading end -->
        <div class="row-12">
          <div class="skill-text">
            <!-- single-skill start -->
            <div class="col-xs-12 col-sm-4 col-md-4 text-center" style="margin-top: 60px;">
            <div class="counter-item">
               <h2 data-count="1054">1054</h2>
               <h6>총 방문수</h6> 
             </div>
         </div>
            
            
            <!-- single-skill end -->
            <!-- single-skill start -->
            <div class="col-xs-12 col-sm-4 col-md-4 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <input type="text" class="knob" value="0" data-rel="55" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                  <h3 class="progress-h4">남자회원</h3>
                </div>
              </div>
            </div>
            <!-- single-skill end -->
            <!-- single-skill start -->
            <div class="col-xs-12 col-sm-4 col-md-4 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <input type="text" class="knob" value="0" data-rel="45" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                  <h3 class="progress-h4">여자회원</h3>
                </div>
              </div>
            </div>
            <!-- single-skill end -->
            <!-- single-skill start -->
        
            <!-- single-skill end -->
          </div>
        </div>
      </div>
    </div>
  </div>
   <!-- /그래프 -->
   
   <!-- 사용방법 -->
         <section id="services_01" class="section_01-bg">
            <div class="container_01">
               <header_01 class="section_01-header">
         <style>
         #hu1 {
            text-align: center;
            font-family: 'Poor Story', cursive;
            font-size: 45px;
            }
         </style>
         <h3 id="hu1">사용 설명</h3>
                  <p></p>
               </header_01>

               <div class="row">

                  <div class="col-md-6 col-lg-5 offset-lg-1 wow bounceInUp"
                     data-wow-duration="1.4s"
                     style="visibility: visible; animation-duration: 1.4s; animation-name: bounceInUp;">
                     <div class="box">
                        <div class="icon">
                           <i class="ion-ios-analytics-outline" style="color: #ff689b;"></i>
                        </div>
                        <h4 class="title">
                           <a href="javascript: void(0)">1step_찾기</a>
                        </h4>
                        <p class="description">회원가입 시 입력한 조건에 맞는 상대방 프로필을 볼 수 있어요.<br>
                                                                            상대가 마음에 들면 바로 좋아요!를 보내세요.</p>
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-5 wow bounceInUp"
                     data-wow-duration="1.4s"
                     style="visibility: visible; animation-duration: 1.4s; animation-name: bounceInUp;">
                     <div class="box">
                        <div class="icon">
                           <i class="ion-ios-bookmarks-outline" style="color: #e9bf06;"></i>
                        </div>
                        <h4 class="title">
                           <a href="javascript: void(0)">2step_매칭</a>
                        </h4>
                        <p class="description">좋아요!를 보낸 상대에게 다시 좋아요!가 오면 매칭 성공!<br> 
                                                                             바로 채팅을 해보세요.</p>
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-5 offset-lg-1 wow bounceInUp"
                     data-wow-delay="0.2s" data-wow-duration="1.4s"
                     style="visibility: visible; animation-duration: 1.4s; animation-delay: 0.2s; animation-name: bounceInUp;">
                     <div class="box">
                        <div class="icon">
                           <i class="ion-ios-paper-outline" style="color: #3fcdc7;"></i>
                        </div>
                        <h4 class="title">
                           <a href="javascript: void(0)">3step_대화 시작</a>
                        </h4>
                        <p class="description">본격적으로 채팅을 하며 pingle pingle 썸을 만들어 보세요!</p>
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-5 wow bounceInUp"
                     data-wow-delay="0.2s" data-wow-duration="1.4s"
                     style="visibility: visible; animation-duration: 1.4s; animation-delay: 0.2s; animation-name: bounceInUp;">
                     <div class="box">
                        <div class="icon">
                           <i class="ion-ios-clock-outline" style="color: #4680ff;"></i>
                        </div>
                        <h4 class="title">
                           <a href="javascript: void(0)">4step_약속 잡기</a>
                        </h4>
                        <p class="description">채팅을 통해 썸을 타며 호감도를 높이고 약속잡기를 하여 실제 만남을 가져보세요.</p>
                     </div>
                  </div>

               </div>

            </div>
         </section>
   <!-- /사용방법 -->
      
      
      <style>
         .text-dec{
         font-family: 'Poor Story', cursive;
         font-size: 45px;
         }
      </style>
      <!-- 테스트 -->
      <section id="contact">
         <div class="banner">
            <div class="bg-color">
               <div class="container">
                  <div class="row-12">
                     <div class="banner-text text-center">
                        <div class="text-border">
                           <br><br><br><br>
                           <h2 class="text-dec">연애 적성 검사</h2>
                        </div>
                        <div class="intro-para text-center quote">
                           <br><br><br><br><br><br><br><br><br><br>
                        <a href="${path}/main/test2.shop" class="page-scroll btn_8 btn-xl_s" role="button">START</a>
                        </div>
                           <div class="mouse"></div>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--/ 테스트 -->
      

      
      <section id="borrrrr">
         <div class="container">
            <div class="row">  
               <div class="col-md-3">
                  <h3>Our Business Office</h3>
                  <p>3422 Street, Barcelona 432, Spain, New Building North, 15th Floor</p>
                  <p><i class="fa fa-phone"></i> +101 377 655 22125</p>
                  <p><i class="fa fa-envelope"></i> mail@yourcompany.com</p>
               </div>
               <div class="col-md-3">
                  <h3>Business Hours</h3>
                  <p><i class="fa fa-clock-o"></i> <span class="day">Weekdays:</span><span>9am to 8pm</span></p>
                  <p><i class="fa fa-clock-o"></i> <span class="day">Saturday:</span><span>9am to 2pm</span></p>
                    <p><i class="fa fa-clock-o"></i> <span class="day">Sunday:</span><span>Closed</span></p>
               </div>
               <div class="col-md-6">
                  <form name="sentMessage" id="contactForm" novalidate="">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="form-group">
                              <input type="text" class="form-control" placeholder="Your Name *" id="name" required="" data-validation-required-message="Please enter your name.">
                              <p class="help-block text-danger"></p>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="form-group">
                              <input type="email" class="form-control" placeholder="Your Email *" id="email" required="" data-validation-required-message="Please enter your email address.">
                              <p class="help-block text-danger"></p>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="form-group">
                              <textarea class="form-control" placeholder="Your Message *" id="message" required="" data-validation-required-message="Please enter a message."></textarea>
                              <p class="help-block text-danger"></p>
                           </div>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row">
                        <div class="col-lg-12 text-center">
                           <div id="success"></div>
                           <button type="submit" class="btn">Send Message</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </section>
      <p id="back-top">
         <a href="#top"><i class="fa fa-angle-up"></i></a>
      </p>
      <footer>
         <div class="container text-center">
            <p>Designed by <a href="http://moozthemes.com"><span>MOOZ</span>Themes.com</a></p>
         </div>
      </footer>


      
      <!-- Modal for portfolio item 2 -->
      <div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="Modal-label-2">Startup Framework</h4>
               </div>
               <div class="modal-body">
                  <img src="../testcss/images/demo/portfolio-2.jpg" alt="img01" class="img-responsive" />
                  <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                  <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <!-- Modal for portfolio item 3 -->
      <div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="Modal-label-3">Lamp & Velvet</h4>
               </div>
               <div class="modal-body">
                  <img src="../testcss/images/demo/portfolio-3.jpg" alt="img01" class="img-responsive" />
                  <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                  <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div> 
            </div>
         </div>
      </div>

      <!-- Modal for portfolio item 4 -->
      <div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="Modal-label-4">Smart Name</h4>
               </div>
               <div class="modal-body">
                  <img src="../testcss/images/demo/portfolio-4.jpg" alt="img01" class="img-responsive" />
                  <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                  <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <!-- Modal for portfolio item 5 -->
      <div class="modal fade" id="Modal-5" tabindex="-1" role="dialog" aria-labelledby="Modal-label-5">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="Modal-label-5">Fast People</h4>
               </div>
               <div class="modal-body">
                  <img src="../testcss/images/demo/portfolio-5.jpg" alt="img01" class="img-responsive" />
                  <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                  <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <!-- Bootstrap core JavaScript
         ================================================== -->
      <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
      <script src="../testcss/jquery/jquery.min.js"></script>  
       <script src="../testcss/js/jquery.easing.min.js"></script>
      <script src="../testcss/js/bootstrap.min.js"></script>
      <script src="../testcss/js/cbpAnimatedHeader.js"></script>
      <script src="../testcss/js/theme-scripts.js"></script> 
       
   <!-- 사용자 후기 --> 
      <!-- JavaScript Libraries -->
         <script src="../reviewcss/lib/jquery/jquery.min.js"></script>
       <script src="../reviewcss/lib/jquery/jquery-migrate.min.js"></script>
       <script src="../reviewcss/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../reviewcss/lib/easing/easing.min.js"></script>
        <script src="../reviewcss/lib/superfish/hoverIntent.js"></script>
        <script src="../reviewcss/lib/superfish/superfish.min.js"></script>
        <script src="../reviewcss/lib/wow/wow.min.js"></script>
        <script src="../reviewcss/lib/waypoints/waypoints.min.js"></script>
       <script src="../reviewcss/lib/counterup/counterup.min.js"></script>
        <script src="../reviewcss/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="../reviewcss/lib/isotope/isotope.pkgd.min.js"></script>
        <script src="../reviewcss/lib/lightbox/js/lightbox.min.js"></script>
        <script src="../reviewcss/lib/touchSwipe/jquery.touchSwipe.min.js"></script> 
        <!--  Contact Form JavaScript File  -->
        <script src="../reviewcss/contactform/contactform.js"></script>
        <!-- Template Main Javascript File -->
        <script src="../reviewcss/js/main.js"></script>
       
   <!-- 사용 설명 -->
       <!-- JavaScript Libraries -->
        <script src="../explain/lib/jquery/jquery.min.js"></script>
        <script src="../explain/lib/jquery/jquery-migrate.min.js"></script>
        <script src="../explain/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../explain/lib/easing/easing.min.js"></script>
        <script src="../explain/lib/mobile-nav/mobile-nav.js"></script>
        <script src="../explain/lib/waypoints/waypoints.min.js"></script>
        <script src="../explain/lib/counterup/counterup.min.js"></script>
  <!-- Contact Form JavaScript File --> 
        <script src="../explain/contactform/contactform.js"></script>
  <!-- Template Main Javascript File -->
  <script src="../explain/js/main.js"></script>
  
   <!-- 테스트  -->


   <!-- 그래프 -->  
  <!-- JavaScript Libraries -->
  <script src="../graphcss/lib/jquery/jquery.min.js"></script>
  <script src="../graphcss/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="../graphcss/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="../graphcss/lib/venobox/venobox.min.js"></script>
  <script src="../graphcss/lib/knob/jquery.knob.js"></script> 
  <script src="../graphcss/lib/parallax/parallax.js"></script> 
  <script src="../graphcss/lib/easing/easing.min.js"></script>
  <script src="../graphcss/lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
  <script src="../graphcss/lib/appear/jquery.appear.js"></script>
  
  <!-- Contact Form JavaScript File --> 
  <script src="../graphcss/contactform/contactform.js"></script>

  <script src="../graphcss/js/main.js"></script>


</body>
</html>