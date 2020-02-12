<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>PINGLE</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="../logincss/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../logincss/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../logincss/css/util.css">
<link rel="stylesheet" type="text/css" href="../logincss/css/main.css">
<!--===============================================================================================-->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#sp').hide();
		$('#d1').hide();
		$('#d2').hide();
		$('#d3').hide();
		$('#sp').fadeIn(2000);
		$('#d1').fadeIn(2000);
		$('#d2').fadeIn(2000);
		$('#d3').fadeIn(2000);
	})
	
	function joincheck(){
		if(f.pay.value == ""){
			alert("회원님의 연봉을 선택해주세요!")
			return false;
		}
		return true;
	}
</script>

</head>
<body>


	<div class="container-login100"
		style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30"
			style="width: 600px;">
			<form class="login100-form validate-form" action="joinagehigh.shop"
				method="post" name="f" onsubmit="return joincheck()">
				<input type="hidden" name="id" value="${user.id}"> <input
					type="hidden" name="password" value="${user.password}"> <input
					type="hidden" name="gender" value="${user.gender}"> <input
					type="hidden" name="phone" value="${user.phone}"> <input
					type="hidden" name="birth" value="${birth}"> <input
					type="hidden" name="address" value="${user.address}"> <input
					type="hidden" name="nickname" value="${user.nickname}">
					<input type="hidden" name="profileurl1" value="${user.profileurl1}">
					<input type="hidden" name="height" value="${user.height}">
					<input type="hidden" name="body" value="${user.body}">
					<input type="hidden" name="education" value="${user.education}">
					<input type="hidden" name="email" value="${user.email}">
				<span class="login100-form-title p-b-37" id="sp"> 회원님의 연봉은 얼마인가요? </span>

				<div class="inputy-item" id="d1">
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-0" name="pay"
						value="표시하지 않음"> <label for="FORM_LOGIN-gender-0"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						표시하지 않음 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-1" name="pay"
						value="1000만원 미만"> <label for="FORM_LOGIN-gender-1"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						1000만원 미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-2" name="pay"
						value="1000만원이상 2000만원미만"> <label for="FORM_LOGIN-gender-2"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						1000만원이상 2000만원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-3" name="pay"
						value="2000만원이상 3000만원미만"> <label for="FORM_LOGIN-gender-3"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						2000만원이상 3000만원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-4" name="pay"
						value="3000만원이상 4000만원미만"> <label for="FORM_LOGIN-gender-4"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						3000만원이상 4000만원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-5" name="pay"
						value="4000만원이상 5000만원미만"> <label for="FORM_LOGIN-gender-5"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						4000만원이상 5000만원미만</label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-6" name="pay"
						value="5000만원이상 6000만원미만"> <label for="FORM_LOGIN-gender-6"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						5000만원이상 6000만원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-7" name="pay"
						value="6000만원이상 7000만원미만"> <label for="FORM_LOGIN-gender-7"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						6000만원이상 7000만원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-8" name="pay"
						value="7000만원이상 8000만원미만"> <label for="FORM_LOGIN-gender-8"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						7000만원이상 8000만원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-9" name="pay"
						value="8000만원이상 9000만원미만"> <label for="FORM_LOGIN-gender-9"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						8000만원이상 9000만원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-10" name="pay"
						value="9000만원이상 1억원미만"> <label for="FORM_LOGIN-gender-10"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						9000만원이상 1억원미만 </label>
					</div>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-11" name="pay"
						value="1억원이상"> <label for="FORM_LOGIN-gender-11"
						style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						1억원이상 </label>
					</div>
				</div>
				<br>
				<div class="container-login100-form-btn" id="d3">
					<button class="login100-form-btn" style="min-width: 0px;"
						type="submit">Next</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1"> 살려줘... </span>
				</div>
			</form>


		</div>
	</div>



	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="../logincss/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../logincss/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../logincss/vendor/bootstrap/js/popper.js"></script>
	<script src="../logincss/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../logincss/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../logincss/vendor/daterangepicker/moment.min.js"></script>
	<script src="../logincss/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../logincss/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="../logincss/js/main.js"></script>

</body>
</html>