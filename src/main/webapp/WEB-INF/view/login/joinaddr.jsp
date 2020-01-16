<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login V9</title>
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
</script>
</head>
<body>


	<div class="container-login100"
		style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30"
			style="width: 600px;">
			<form class="login100-form validate-form" action="joinnick.shop" method="post">
				<input type="hidden" name="id" value="${user.id}">
				<input type="hidden" name="password" value="${user.password}">
				<input type="hidden" name="gender" value="${user.gender}">
				<input type="hidden" name="phone" value="${user.phone}">
				<input type="hidden" name="birth" value="${birth}">
				<span class="login100-form-title p-b-37" id="sp"> 거주지는 어디입니까? </span>

				<div class="inputy-item" id="d1">
					<div>
						<h5>한국</h5>
					</div>
				<br>	
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-0" name="address"
						value="서울"> <label for="FORM_LOGIN-gender-0"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						서울 </label>
					<input type="radio" id="FORM_LOGIN-gender-1" name="address"
						value="경기"> <label for="FORM_LOGIN-gender-1"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						경기 </label>	
					<input type="radio" id="FORM_LOGIN-gender-2" name="address"
						value="인천"> <label for="FORM_LOGIN-gender-2"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						인천 </label>
				</div>
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-3" name="address"
						value="대전"> <label for="FORM_LOGIN-gender-3"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						대전 </label>
					<input type="radio" id="FORM_LOGIN-gender-4" name="address"
						value="충북"> <label for="FORM_LOGIN-gender-4"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						충북 </label>	
					<input type="radio" id="FORM_LOGIN-gender-5" name="address"
						value="충남"> <label for="FORM_LOGIN-gender-5"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						충남 </label>
				</div>
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-6" name="address"
						value="강원"> <label for="FORM_LOGIN-gender-6"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						강원 </label>
					<input type="radio" id="FORM_LOGIN-gender-7" name="address"
						value="부산"> <label for="FORM_LOGIN-gender-7"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						부산 </label>	
					<input type="radio" id="FORM_LOGIN-gender-8" name="address"
						value="경북"> <label for="FORM_LOGIN-gender-8"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						경북 </label>
				</div>
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-9" name="address"
						value="경남"> <label for="FORM_LOGIN-gender-9"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						경남 </label>
					<input type="radio" id="FORM_LOGIN-gender-10" name="address"
						value="대구"> <label for="FORM_LOGIN-gender-10"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						대구 </label>	
					<input type="radio" id="FORM_LOGIN-gender-11" name="address"
						value="울산"> <label for="FORM_LOGIN-gender-11"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						울산 </label>
				</div>
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-12" name="address"
						value="광주"> <label for="FORM_LOGIN-gender-12"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						광주 </label>
					<input type="radio" id="FORM_LOGIN-gender-13" name="address"
						value="전북"> <label for="FORM_LOGIN-gender-13"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						전북 </label>	
					<input type="radio" id="FORM_LOGIN-gender-14" name="address"
						value="전남"> <label for="FORM_LOGIN-gender-14"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						전남 </label>
				</div>
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-15" name="address"
						value="제주"> <label for="FORM_LOGIN-gender-15"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						제주 </label>
					<input type="radio" id="FORM_LOGIN-gender-16" name="address"
						value="그외"> <label for="FORM_LOGIN-gender-16"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						그 외 </label>	
				</div>
				<br>
				<div>
					<h5>해외</h5>
				</div>
				<br>
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-17" name="address"
						value="미국"> <label for="FORM_LOGIN-gender-17"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						미국 </label>
					<input type="radio" id="FORM_LOGIN-gender-18" name="address"
						value="일본"> <label for="FORM_LOGIN-gender-18"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						일본 </label>	
					<input type="radio" id="FORM_LOGIN-gender-19" name="address"
						value="아시아"> <label for="FORM_LOGIN-gender-19"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						아시아 </label>
				</div>
				<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-21" name="address"
						value="유럽"> <label for="FORM_LOGIN-gender-21"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						유럽 </label>	
					<input type="radio" id="FORM_LOGIN-gender-22" name="address"
						value="그외"> <label for="FORM_LOGIN-gender-22"
						style="position: relative; width: 120px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						그 외 </label>
				</div>
				<br>
				</div>
				
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