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
			<form class="login100-form validate-form" action="joinbody.shop"
				method="post">
				<input type="hidden" name="id" value="${user.id}"> <input
					type="hidden" name="password" value="${user.password}"> <input
					type="hidden" name="gender" value="${user.gender}"> <input
					type="hidden" name="phone" value="${user.phone}"> <input
					type="hidden" name="birth" value="${birth}"> <input
					type="hidden" name="address" value="${user.address}"> <input
					type="hidden" name="nickname" value="${user.nickname}">
					<input type="hidden" name="profileurl1" value="${user.profileurl1}">
				<span class="login100-form-title p-b-37" id="sp"> 회원님의 키를 알려주세요 </span>

				<div class="inputy-item" id="d1">
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-0" name="height"
						value="130"> <label for="FORM_LOGIN-gender-0"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						130cm </label>
					<input type="radio" id="FORM_LOGIN-gender-1" name="height"
						value="135"> <label for="FORM_LOGIN-gender-1"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						135cm </label>	
					<input type="radio" id="FORM_LOGIN-gender-2" name="height"
						value="140"> <label for="FORM_LOGIN-gender-2"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						140cm </label>
					<input type="radio" id="FORM_LOGIN-gender-3" name="height"
						value="145"> <label for="FORM_LOGIN-gender-3"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						145cm </label>
					</div>
					<br>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-4" name="height"
						value="150"> <label for="FORM_LOGIN-gender-4"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						150cm </label>
					<input type="radio" id="FORM_LOGIN-gender-5" name="height"
						value="155"> <label for="FORM_LOGIN-gender-5"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						155cm </label>	
					<input type="radio" id="FORM_LOGIN-gender-6" name="height"
						value="160"> <label for="FORM_LOGIN-gender-6"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						160cm </label>
					<input type="radio" id="FORM_LOGIN-gender-7" name="height"
						value="165"> <label for="FORM_LOGIN-gender-7"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						165cm </label>
					</div>
					<br>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-8" name="height"
						value="170"> <label for="FORM_LOGIN-gender-8"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						170cm </label>
					<input type="radio" id="FORM_LOGIN-gender-9" name="height"
						value="175"> <label for="FORM_LOGIN-gender-9"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						175cm </label>	
					<input type="radio" id="FORM_LOGIN-gender-10" name="height"
						value="180"> <label for="FORM_LOGIN-gender-10"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						180cm </label>
					<input type="radio" id="FORM_LOGIN-gender-11" name="height"
						value="185"> <label for="FORM_LOGIN-gender-11"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						185cm </label>
					</div>
					<br>
					<div class="inputy-item">
					<input type="radio" id="FORM_LOGIN-gender-12" name="height"
						value="190"> <label for="FORM_LOGIN-gender-12"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						190cm </label>
					<input type="radio" id="FORM_LOGIN-gender-13" name="height"
						value="195"> <label for="FORM_LOGIN-gender-13"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						195cm </label>	
					<input type="radio" id="FORM_LOGIN-gender-14" name="height"
						value="200"> <label for="FORM_LOGIN-gender-14"
						style="position: relative; width: 90px; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
						200cm </label>
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