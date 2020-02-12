<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>PINGLE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../logincss/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../logincss/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../logincss/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../logincss/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../logincss/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../logincss/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../logincss/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../logincss/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../logincss/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../logincss/css/util.css">
	<link rel="stylesheet" type="text/css" href="../logincss/css/main.css">
<!--===============================================================================================-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	
	
	<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" action="login.shop">
				<span class="login100-form-title p-b-37" id="sp">
					프로필 입력완료!
				</span>

				<div id="d1" style="padding-left: 20%">
					<img src="img/${user.profileurl1}" width="150" height="160">
				</div>
				<br>
				<div id="d2">
					<font size="2px;">
					프로필을 추가하면 매칭될 확률이 높아집니다!
					<br>
					<br>
					&nbsp;&nbsp;ㆍ 인사말을 입력해주세요. <br>
					&nbsp;&nbsp;ㆍ 프로필사진을 올려주세요. <br>
					&nbsp;&nbsp;ㆍ 관심사에 가입해보세요. <br>
					</font>
				</div>

				<br>
				<div class="container-login100-form-btn" id="d3">
					<button class="login100-form-btn">
						Sign In
					</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1">
						살려줘...
					</span>
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