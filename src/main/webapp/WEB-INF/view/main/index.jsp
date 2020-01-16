<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico">
<title>Lattes - Onepage Multipurpose Bootstrap HTML</title>
<!-- Bootstrap core CSS -->
<link href="../testcss/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link href="../testcss/css/owl.carousel.css" rel="stylesheet">
<link href="../testcss/css/owl.theme.default.min.css" rel="stylesheet">
<link href="../testcss/css/style.css" rel="stylesheet">
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../testcss/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<!-- 사용자 후기 -->
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
  
    <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- 그래프 -->
   

<!-- 사용설명 -->
<script type='text/javascript' src='https://pairs-korea.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='https://pairs-korea.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>

<!-- 테스트 -->
  <link href="https://fonts.googleapis.com/css?family=Gugi&display=swap" rel="stylesheet">
  <!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans"> -->
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">


</head>

	<body id="page-top">
		<!-- Header -->
		<header>
			<div class="container">
				<div class="slider-container">
					<div class="intro-text">
						<div class="intro-lead-in">Welcome To Our Studio!</div>
						<div class="intro-heading">It's Nice To Meet You</div>
						<a href="${path}/login/login.shop" class="page-scroll btn btn-xl">시작하기</a>
					</div>
				</div>
			</div>
		</header>
		
		<!-- 사용자 후기 -->
		      <!--==========================
      Clients Section
    ============================-->
    <section id="testimonials" class="section-bg wow fadeInUp">
      <div class="container">

        <!-- <header class="section-header"> -->
          <h3>후기</h3>
       <!--  </header> -->

        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-item">
            <img src="../testcss/images/testimonial-1.jpg" class="testimonial-img" alt="">
            <h3>Saul Goodman</h3>
            <h4>Ceo &amp; Founder</h4>
            <p>
              <img src="../testcss/images/quote-sign-left.png" class="quote-sign-left" alt="">
              Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
              <img src="images/quote-sign-right.png" class="quote-sign-right" alt="">
            </p>
          </div>

          <div class="testimonial-item">
            <img src="../testcss/images/testimonial-2.jpg" class="testimonial-img" alt="">
            <h3>Sara Wilsson</h3>
            <h4>Designer</h4>
            <p>
              <img src="../testcss/images/quote-sign-left.png" class="quote-sign-left" alt="">
              Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
              <img src="../testcss/images/quote-sign-right.png" class="quote-sign-right" alt="">
            </p>
          </div>

          <div class="testimonial-item">
            <img src="../testcss/images/testimonial-3.jpg" class="testimonial-img" alt="">
            <h3>Jena Karlis</h3>
            <h4>Store Owner</h4>
            <p>
              <img src="../testcss/images/quote-sign-left.png" class="quote-sign-left" alt="">
              Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
              <img src="../testcss/images/quote-sign-right.png" class="quote-sign-right" alt="">
            </p>
          </div>

          <div class="testimonial-item">
            <img src="../testcss/images/testimonial-4.jpg" class="testimonial-img" alt="">
            <h3>Matt Brandon</h3>
            <h4>Freelancer</h4>
            <p>
              <img src="../testcss/images/quote-sign-left.png" class="quote-sign-left" alt="">
              Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
              <img src="../testcss/images/quote-sign-right.png" class="quote-sign-right" alt="">
            </p>
          </div>

          <div class="testimonial-item">
            <img src="../testcss/images/testimonial-5.jpg" class="testimonial-img" alt="">
            <h3>John Larson</h3>
            <h4>Entrepreneur</h4>
            <p>
              <img src="../testcss/images/quote-sign-left.png" class="quote-sign-left" alt="">
              Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
              <img src="../testcss/images/quote-sign-right.png" class="quote-sign-right" alt="">
            </p>
          </div>

        </div>

      </div>
    </section><!-- #testimonials -->
		
		
		<!-- 그래프 -->
	  <section class="overlay-dark bg-img1 dark-bg short-section">
	  <div class="container text-center">
			
			        <div class="row">
          <div class="skill-text">
            <!-- single-skill start -->
            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <div style="display:inline;width:175px;height:200px;"><canvas width="218" height="250" style="width: 175px; height: 200px;"></canvas><input type="text" class="knob" value="0" data-rel="95" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled="" readonly="readonly" style="width: 91px; height: 58px; position: absolute; vertical-align: middle; margin-top: 58px; margin-left: -133px; border: 0px; background: none; font: bold 35px Arial; text-align: center; color: rgb(62, 193, 213); padding: 0px; -webkit-appearance: none;"></div>
                  <h3 class="progress-h4">Web Design</h3>
                </div>
              </div>
            </div>
            <!-- single-skill end -->
            <!-- single-skill start -->
            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <div style="display:inline;width:175px;height:200px;"><canvas width="218" height="250" style="width: 175px; height: 200px;"></canvas><input type="text" class="knob" value="0" data-rel="85" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled="" readonly="readonly" style="width: 91px; height: 58px; position: absolute; vertical-align: middle; margin-top: 58px; margin-left: -133px; border: 0px; background: none; font: bold 35px Arial; text-align: center; color: rgb(62, 193, 213); padding: 0px; -webkit-appearance: none;"></div>
                  <h3 class="progress-h4">Graphics Design</h3>
                </div>
              </div>
            </div>
            <!-- single-skill end -->
            <!-- single-skill start -->
            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <div style="display:inline;width:175px;height:200px;"><canvas width="218" height="250" style="width: 175px; height: 200px;"></canvas><input type="text" class="knob" value="0" data-rel="75" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled="" readonly="readonly" style="width: 91px; height: 58px; position: absolute; vertical-align: middle; margin-top: 58px; margin-left: -133px; border: 0px; background: none; font: bold 35px Arial; text-align: center; color: rgb(62, 193, 213); padding: 0px; -webkit-appearance: none;"></div>
                  <h3 class="progress-h4">Php Developer</h3>
                </div>
              </div>
            </div>
            <!-- single-skill end -->
            <!-- single-skill start -->
            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
              <div class="single-skill">
                <div class="progress-circular">
                  <div style="display:inline;width:175px;height:200px;"><canvas width="218" height="250" style="width: 175px; height: 200px;"></canvas><input type="text" class="knob" value="0" data-rel="65" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled="" readonly="readonly" style="width: 91px; height: 58px; position: absolute; vertical-align: middle; margin-top: 58px; margin-left: -133px; border: 0px; background: none; font: bold 35px Arial; text-align: center; color: rgb(62, 193, 213); padding: 0px; -webkit-appearance: none;"></div>
                  <h3 class="progress-h4">Java Script</h3>
                </div>
              </div>
            </div>
            <!-- single-skill end -->
          </div>
        </div>	     
				     
	  </div>
      </section>
      <!-- /그래프 -->
      
				
		<!-- 사용방법 -->
		<section id="team" class="light-bg">
			<div class="container">
				
            <aitem>
                <div class="p-title">
                    간단한 사용방법
                </div>
            </aitem>
		
            <div class="p-spacer"></div>
			
            <div class="columns p-columns p-is-center">
                <div class="column">

                    <div class="p-aitem-wrap">
                        <aitem>
                            
                            <div class="p-carousel-howto-head">
                                <div class="si-chan-carousel si-chan-box-cnt-4">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-0">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-0">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-0">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-0">

                                    <div class="si-chan-box">
                                        <div class="si-chan-item">
                                            <div class="p-title-pre">
                                                Step1
                                            </div>
                                            <div class="p-title">
                                                찾기
                                            </div>
                                            <div class="p-spacer"></div>
                                            <div class="p-body">
                                                몇 명이든 누구든 무료로<br>전회원의 프로필을 볼 수 있어요<br><br>마음에 드는 상대가 있다면 바로<br>좋아요! 를 보내세요
                                            </div>
                                        </div>
                                        <div class="si-chan-item">
                                            <div class="p-title-pre">
                                                Step2
                                            </div>
                                            <div class="p-title">
                                                매칭
                                            </div>
                                            <div class="p-spacer"></div>
                                            <div class="p-body">
                                                좋아요! 를 보낸 상대에게<br>고마워요! 가 오면<br><br>매칭 성공!<br>바로 메시지를 보내세요
                                            </div>
                                        </div>
                                        <div class="si-chan-item">
                                            <div class="p-title-pre">
                                                Step3
                                            </div>
                                            <div class="p-title">
                                                대화 시작
                                            </div>
                                            <div class="p-spacer"></div>
                                            <div class="p-body">
                                                본격적으로 채팅을 통해 썸을<br>만들어 보세요<br><br>여성회원은 완전 무료!<br>남성회원은 일부 무료!
                                            </div>
                                        </div>
                                        <div class="si-chan-item">
                                            <div class="p-title">
                                                오늘의 추천
                                            </div>
                                            <div class="p-spacer"></div>
                                            <div class="p-body">
                                                상세검색이나 조건 설정이<br>귀찮으신가요?<br><br>데이터를 기반으로 매일매일<br>당신에게 딱 맞는 상대를<br>소개해 드려요
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </aitem>
                    </div>

                    <div class="p-spacer p-mul2"></div>
					
                    <div class="p-aitem-wrap">
                        <aitem>
                            
                            <div class="p-carousel-howto-nav">
                                <div class="si-chan-carousel-nav">
                                    <div class="si-chan-box">
                                        <input type="radio" class="si-chan-operator" name="nav-id-0">
                                        <div class="si-chan-timer-bar"></div>
                                        <input type="radio" class="si-chan-operator" name="nav-id-0">
                                        <div class="si-chan-timer-bar"></div>
                                        <input type="radio" class="si-chan-operator" name="nav-id-0">
                                        <div class="si-chan-timer-bar"></div>
                                        <input type="radio" class="si-chan-operator" name="nav-id-0">
                                        <div class="si-chan-timer-bar"></div>
                                    </div>
                                </div>
                            </div>
                        </aitem>
                    </div>

                </div>

                <div class="column p-sec-howto-video">

                    <div class="p-aitem-wrap">
                        <div class="p-aitem p-loader-wrap">
                            <i class="fa fa-spinner p-loader" aria-hidden="true"></i>
                        </div>
                    </div>

                    <div class="p-aitem-wrap-movie">
                        <aitem>
                            
                            <div class="p-carousel-howto-video">
                                <div class="si-chan-carousel si-chan-box-cnt-4">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-1">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-1">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-1">
                                    <input type="radio" class="si-chan-operator" name="carousel-id-1">

                                    <div class="si-chan-box">
                                        <div class="si-chan-item">
                                            <video muted="muted" preload="auto" webkit-playsinline="" playsinline="">
                                                <source src="https://pairs-korea.com/wp-content/themes/pairshpseventeen/resources/assets/videos/howto/step1.mp4">
                                                
                                            </video>
                                        </div>
                                        <div class="si-chan-item">
                                            <video muted="muted" preload="auto" webkit-playsinline="" playsinline="">
                                                <source src="https://pairs-korea.com/wp-content/themes/pairshpseventeen/resources/assets/videos/howto/step2.mp4">
                                                
                                            </video>
                                        </div>
                                        <div class="si-chan-item">
                                            <video muted="muted" preload="auto" webkit-playsinline="" playsinline="">
                                                <source src="https://pairs-korea.com/wp-content/themes/pairshpseventeen/resources/assets/videos/howto/step3.mp4">
                                                
                                            </video>
                                        </div>
                                        <div class="si-chan-item">
                                            <video muted="muted" preload="auto" webkit-playsinline="" playsinline="">
                                                <source src="https://pairs-korea.com/wp-content/themes/pairshpseventeen/resources/assets/videos/howto/pickup.mp4">
                                                
                                            </video>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </aitem>
                    </div>

                </div>
            </div>

				
			</div>
		</section>
		<!-- /사용방법 -->
		
		
		
		<!-- 테스트 -->
		<section id="contact">
			<div class="banner">
				<div class="bg-color">
					<div class="container">
						<div class="row">
							<div class="banner-text text-center">
								<div class="text-border">
									<br><br><br><br>
									<h2 class="text-dec">연애적성검사</h2>
								</div>
								<div class="intro-para text-center quote">
									<br><br><br><br><br><br><br><br><br><br>
								<a href="${path}/main/test2.shop" class="page-scroll btn btn-xl" role="button">START</a>
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
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="../testcss/js/bootstrap.min.js"></script>
		<script src="../testcss/js/owl.carousel.min.js"></script>
		<script src="../testcss/js/cbpAnimatedHeader.js"></script>
		<script src="../testcss/js/theme-scripts.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="../testcss/js/ie10-viewport-bug-workaround.js"></script>
		<!-- 사용자 후기 -->
		 <!-- JavaScript Libraries -->
  <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>
  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
	<script>
		if (window.self == window.top) {
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');
			ga('create', 'UA-55234356-4', 'auto');
			ga('send', 'pageview');
		}
	</script>

	<!-- 사용 설명 -->
		<script type='text/javascript' src='https://pairs-korea.com/wp-content/themes/pairshpseventeen/dist/scripts/main.js?ver=1578408857'></script>
		<script type='text/javascript' src='https://pairs-korea.com/wp-content/themes/pairshpseventeen/dist/scripts/front_page.js?ver=1578408857'></script>
		<script type='text/javascript' src='https://pairs-korea.com/wp-content/themes/pairshpseventeen/dist/scripts/footer_fixed.js?ver=1578408857'></script>
		<script type='text/javascript' src='https://pairs-korea.com/wp-includes/js/wp-embed.min.js?ver=4.8.1'></script>
	<!-- 테스트 -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="contactform/contactform.js"></script>
	<script>
		if (window.self == window.top) {
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');
			ga('create', 'UA-55234356-4', 'auto');
			ga('send', 'pageview'); 
		}
	</script>
	<!-- 그래프 -->
	
   
</body>
</html>