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
		var joinnick = f.nickname.value;
		if(f.nickname.value == ""){
			alert("회원님의 닉네임을 입력해주세요!")
			return false;
		}
		$.ajax({
            type : "GET",
            url : "../ajax/nicknamecheck.shop",
            data : {
               "id" : joinnick
            },
            success : function(data) {  
            		if(data == 1){
            			f.nickname.focus();
            			alert("중복된 닉네임입니다.")
            			return;
            		}
            		else{
            			f.submit();
            		}
            }
      })
	}
</script>
</head>
<body>


	<div class="container-login100"
		style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30"
			style="width: 600px;">
			<form class="login100-form validate-form" action="joinpic.shop" method="post" name="f">
				<input type="hidden" name="id" value="${user.id}">
				<input type="hidden" name="password" value="${user.password}">
				<input type="hidden" name="gender" value="${user.gender}">
				<input type="hidden" name="phone" value="${user.phone}">
				<input type="hidden" name="birth" value="${birth}">
				<input type="hidden" name="address" value="${user.address}">
				<input type="hidden" name="email" value="${user.email}">
				<span class="login100-form-title p-b-37" id="sp"> 닉네임을 정해주세요 </span>
				
				<div class="inputy-item" id="d1">
					<input type="text" name="nickname" style="font-size: 1.5rem; color: #575757; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; box-sizing: border-box; width: 100%;">	
				</div>
				<br>
				<div id="d2">
					<div class="fnt-b"><font style="color: #b4b4b4;">주의해 주세요.</font></div>
					<ul class="dots mt10"><li><font style="color: #b4b4b4;">ㆍ 닉네임은 등록 후에도 변경하실 수 있습니다.</font></li></ul>
				</div>
				<br>
				<div class="container-login100-form-btn" id="d3">
					<button class="login100-form-btn" style="min-width: 0px;"
						type="button" onclick="joincheck(this.form)">Next</button>
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