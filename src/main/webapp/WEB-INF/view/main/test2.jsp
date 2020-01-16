<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
	<head> 
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>Lattes - Onepage Multipurpose Bootstrap HTML</title>
		<!-- Bootstrap core CSS -->
		<link href="${path}/testcss/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="${path}/testcss/css/owl.carousel.css" rel="stylesheet">
		<link href="${path}/testcss/css/owl.theme.default.min.css"  rel="stylesheet">
		<link href="${path}/testcss/css/style.css" rel="stylesheet">
		<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
		<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
		<script src="${path}/testcss/js/ie-emulation-modes-warning.js"></script>
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<script>
var main_step = 0;
var array_answer = "";
var array_question = [
	"나는 걱정을 많이 하지 않는다.",
	"나는 남을 돕는 것을 좋아한다.",
	"나는 모든 일을 계획을 세워서 한다.",
	"나는 기발한 아이디어들을 많이 가지고 있다.",
	"나는 사람을 편하게 한다.",
	"나는 물건을 쓰고 난 후 제자리에 갖다 놓는<br />것을 자주 잊는다.",
	"나는 말수가 적다.",
	"나는 어렵더라도 도전적인 것들을 읽는 것을<br />좋아한다.",
	"나는 웬만해서는 짜증내지 않는다.",
	"나는 다른 사람에게 쉽게 다가가지 못한다.",
	"나는 마음이 따뜻하다.",
	"나는 어차피 해야 하는 귀찮은 일들을<br />미루지 않고 바로 해 치운다.",
	"나는 대화를 먼저 시작하는 편이다.",
	"나는 어떤 일을 늘 새로운 방법으로<br />해보기를 좋아한다.",
	"내 생각대로 일이 풀리지 않으면 실망감을 그대로 표현한다.",
	"나는 스트레스를 잘 받는다."];

	function change_answer_state(obj) {
		var now_index;

		now_index = $("#SLForm").find(":radio[name='answer']").index(obj);

		if (array_answer != "") {
			array_answer = array_answer
					+ ","
					+ $("#SLForm").find(":radio[name='answer']").eq(now_index)
							.val();
		} else {
			array_answer = $("#SLForm").find(":radio[name='answer']").eq(
					now_index).val();
		}

		$(".answer").eq(0).removeClass("on");
		$(".answer").eq(1).removeClass("on");
		$(".answer").eq(2).removeClass("on");
		$(".answer").eq(3).removeClass("on");

		if (now_index == 0) {
			$(".answer").eq(0).addClass("on");
			$(".answer").eq(1).removeClass("on");
			$(".answer").eq(2).removeClass("on");
			$(".answer").eq(3).removeClass("on");

			$("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
					true);
			$("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
					false);
		} else if (now_index == 1) {
			$(".answer").eq(0).removeClass("on");
			$(".answer").eq(1).addClass("on");
			$(".answer").eq(2).removeClass("on");
			$(".answer").eq(3).removeClass("on");

			$("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
					true);
			$("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
					false);
		} else if (now_index == 2) {
			$(".answer").eq(0).removeClass("on");
			$(".answer").eq(1).removeClass("on");
			$(".answer").eq(2).addClass("on");
			$(".answer").eq(3).removeClass("on");

			$("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
					true);
			$("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
					false);
		} else if (now_index == 3) {
			$(".answer").eq(0).removeClass("on");
			$(".answer").eq(1).removeClass("on");
			$(".answer").eq(2).removeClass("on");
			$(".answer").eq(3).addClass("on");

			$("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
					false);
			$("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
					true);
		}

		setTimeout("change_question()", 500);
	}

	function change_question() {
		main_step = main_step + 1;

		if (main_step == 16) {
			//alert(array_answer);

			document.trForm.answer.value = array_answer;
			document.trForm.submit();
			return;
		}

		$(".question_text").html(
				(main_step + 1) + ". " + array_question[main_step]);

		if (main_step > 8) {
			$(".count_text").html("[ " + ((16 - main_step)) + "문항 남았습니다 ]");
		}

		$(".answer").eq(0).removeClass("on");
		$(".answer").eq(1).removeClass("on");
		$(".answer").eq(2).removeClass("on");
		$(".answer").eq(3).removeClass("on");

		$("#SLForm").find(":radio[name='answer']").eq(0).prop("checked", false);
		$("#SLForm").find(":radio[name='answer']").eq(1).prop("checked", false);
		$("#SLForm").find(":radio[name='answer']").eq(2).prop("checked", false);
		$("#SLForm").find(":radio[name='answer']").eq(3).prop("checked", false);
	}

	$(document).ready(function() {
		var toggled = true;
		$("img").on('click', function() {
			$(this).attr("src", "/html/love_test/self_love/img/btn_02.png");
			setTimeout(function() {
				$("#step_area").animate({
					"marginTop" : "-=723px"
				}, 300);
			}, 500);
		});

		$(".main_bg").fadeIn(800, function() {
			$("#flip").slideDown(300, function() {
				$(".second").show();
			});
		});
	});
</script>

</head>
	<body id="page-top">
		<section id="portfolio" class="light-bg">
			<div class="container">
			<div class="row">
				
				</div>
			</div>



			<div class="row">
				
				<div class="second" style="height: 723px;">
			<form name="SLForm" id="SLForm" method="post" class="temp">
				<input type="hidden" name="array_answer" value="">

				<h1>당신은 얼마나 연애를 위한 준비가 되어 있나요? 연애적성검사</h1>			
				<div class="q">
				<div class="middle question_text">		
				<!--
				1. 나는 걱정을 많이 하지 않는다.
				2. 나는 남을 돕는 것을 좋아한다.
				3. 나는 모든 일을 계획을 세워서 한다.
				4. 나는 기발한 아이디어들을 많이 가지고 있다.
				5. 나는 사람을 편하게 한다.
				6. 나는 물건을 쓰고 난 후 제자리에 갖다 놓는<br />것을 자주 잊는다.
				7. 나는 말수가 적다.
				8. 나는 어렵더라도 도전적인 것들을 읽는 것을<br />좋아한다.
				9. 나는 웬만해서는 짜증내지 않는다.
				10. 나는 다른 사람에게 쉽게 다가가지 못한다.
				11. 나는 마음이 따뜻하다.
				12. 나는 어차피 해야 하는 귀찮은 일들을<br />미루지 않고 바로 해 치운다.
				13. 나는 대화를 먼저 시작하는 편이다.
				14. 나는 어떤 일을 늘 새로운 방법으로<br />해보기를 좋아한다.
				15. 내 생각대로 일이 풀리지 않으면 실망감을 그대로 표현한다.
				16. 나는 스트레스를 잘 받는다.
				-->
				1. 나는 걱정을 많이 하지 않는다.
				</div>
				</div>
				<div class="a">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tbody><tr>
							<td width="11" height="89"></td>
							<td width="89">
								<label class="answer">
									<input type="radio" name="answer" value="1" onclick="change_answer_state(this);">
								</label>
							</td>
							<td width="11"></td>
							<td width="11"></td>
							<td width="89">
								<label class="answer">
									<input type="radio" name="answer" value="3" onclick="change_answer_state(this);">
								</label>
							</td>
							<td width="11"></td>
							<td width="11"></td>
							<td width="89">
								<label class="answer">
									<input type="radio" name="answer" value="5" onclick="change_answer_state(this);">
								</label>
							</td>
							<td width="11"></td>
							<td width="11"></td>
							<td width="89">
								<label class="answer">
									<input type="radio" name="answer" value="7" onclick="change_answer_state(this);">
								</label>
							</td>
							<td width="11"></td>
							<!--
							<td width="11"></td>
							<td width="89">
								<label class="answer">
									<input type="radio" name="answer" value="5" onclick="change_answer_state(this);" />
								</label>
							</td>
							<td width="11"></td-->
						</tr>
					</tbody></table>
				</div>
				<div class="state">
					<div>그렇지않다</div>
					<img src="${path}/css/testcss/images/self_01.png">
					<div>보통이다</div> 
					<img src="${path}/css/testcss/images/self_02.png">
					<div>매우그렇다</div>
				</div>
				<div class="remain count_text"></div>
			</form>
			</div>
			
			
				 
			</div>
			</div><!-- end container -->
		</section>
		<p id="back-top">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>
		<footer>
			<div class="container text-center">  
				<p>Designed by <a href="http://moozthemes.com"><span>MOOZ</span>Themes.com</a></p>
			</div>
		</footer>
		
		<script type="text/javascript">
		$(".numberOnly").on("focusout", function() {
			var x = $(this).val();
			if (x && x.length > 0) {
				if (!$.isNumeric(x)) {
					x = x.replace(/[^0-9]/g, "");
				}

				$(this).val(x);
			}
		}).on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		}); 
	</script> 

		
		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="${path}/css/testcss/js/bootstrap.min.js"></script>
		<script src="${path}/css/testcss/js/owl.carousel.min.js"></script>
		<script src="${path}/css/testcss/js/cbpAnimatedHeader.js"></script>
		<script src="${path}/css/testcss/js/theme-scripts.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="${path}/css/testcss/js/ie10-viewport-bug-workaround.js"></script>
	</body>
</html>