<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--
	Aerial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>PINGLE</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${path}/css/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="${path}/css/assets/css/noscript.css" />
</noscript>
<script src="https://kit.fontawesome.com/9e0947a00b.js"
	crossorigin="anonymous"></script>
<style type="text/css">
.bt {
	border-radius: 100%;
	border: solid 1px #fff;
	font-size: 3.75em;
	background-color: rgba(255, 255, 255, 0);
}

i {
	color: white;
	font-size: 60%;
	vertical-align: middle;
	padding-left: 20%;
	padding-right: 20%;
	padding-bottom: 10%;
}
</style>
</head>
<body class="is-preload">
	<div id="wrapper">
		<div id="bg"></div>
		<div id="overlay"></div>
		<div id="main">

			<!-- Header -->
			<header id="header">
				<h1>PINGLE</h1>
				<p>메뉴를 선택해주세요~!</p>
				<nav>
					<ul>
						<li>
							<button type="button"
								onclick="location.href='${path}/user/usersearch.shop'"
								class="bt">
								<i class="fas fa-search"></i>
							</button>
						</li>
						<li>
							<button type="button"
								onclick="location.href='${path}/interest/interest.shop'"
								class="bt">
								<i class="fas fa-users"
									style="padding-left: 13%; padding-right: 13%;"></i>
							</button>
						</li>
						<li>
							<button type="button"
								onclick="location.href='${path}/user/receive.shop'" class="bt">
								<i class="fas fa-thumbs-up"></i>
							</button>
						</li>
						<li>
							<button type="button"
								onclick="location.href='${path}/board/notice.shop'" class="bt">
								<i class="fas fa-clipboard-list"
									style="padding-left: 28%; padding-right: 28%;"></i>
							</button>
						</li>
						<li>
							<button type="button"
								onclick="location.href='${path}/user/mypage.shop?id=${id}'"
								class="bt">
								<i class="fas fa-cog"
									style="padding-left: 21%; padding-right: 23%;"></i>
							</button>
						</li>
					</ul>
				</nav>
			</header>

			<!-- Footer -->
			<footer id="footer">
				<span class="copyright">살려줘....</span>
			</footer>

		</div>
	</div>
	<script>
		window.onload = function() {
			document.body.classList.remove('is-preload');
		}
		window.ontouchmove = function() {
			return false;
		}
		window.onorientationchange = function() {
			document.body.scrollTop = 0;
		}
	</script>
</body>
</html>