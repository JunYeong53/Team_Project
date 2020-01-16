<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 받은 좋아요</title>
<style>
	input.select {
	    background: url( "images/button_search.png" ) no-repeat;
        border: none;
        width: 32px;
        height: 32px;
        cursor: pointer;
	}
	
	input.love {
	    background: url( "images/button_search.png" ) no-repeat;
        border: none;
        width: 32px;
        height: 32px;
        cursor: pointer;
	}
</style>
</head>
<body>
<br>
<h1>내가 받은 좋아요!</h1><br>
<br>
<table>
		<tr><td><img src="" width="650" height="400"></td><td align="left">닉네임 &nbsp; 나이</td></tr>
		<tr><td align="center"><input type="button" class="select">&nbsp;<input type="button" class="love"></td></tr>
</table>
</body>
</html>