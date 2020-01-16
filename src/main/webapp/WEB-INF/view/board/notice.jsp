<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/view/jspHeader.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function() {
	$("#oinfo").show(); 
	$("#minfo").hide(); 	
	$("#tab1").addClass("select");
	$(".saleLine").each(function() {
		$(this).hide();
	})
})
	function disp_div(id,tab) {
		$(".info").each(function() {
		$(this).hide();
		})
		$("#tab1").removeClass("select");
		$("#tab2").removeClass("select");
		$("#"+id).show();
		$("#"+tab).addClass("select");
	}
	function list_disp(id) {
	$("#"+id).toggle(); 
	}
</script>
<style type="text/css">
	.select {		
		background-color: #00c1bf;
		color:white;		
	}
</style>
<meta charset="utf-8">
<title></title>
</head>
<body>
<div class="btn-group" role="group" aria-label="Basic example" style="position:absolute; left:43%; top:15%;">
<button type="button" class="btn btn-secondary tab" id="tab1" style="border-radius: 50px;"  
		onclick="javascript:disp_div('oinfo','tab1')"><i class="far fa-calendar"></i>공지 사항</button>
  <button type="button" class="btn btn-secondary tab" id="tab2" style="border-radius: 50px;"
 		onclick="javascript:disp_div('minfo','tab2')"><i class="far fa-bell"></i>개인 알람</button>
</div>

<div id="oinfo" class="info container">
	<table style="position:absolute; top:25%; width:26%; left:35%">
		<tr><th>번호</th><th>제목</th><th style="text-align:right">작성일</th></tr>
		 <c:forEach items="${noboardlist}" var="list" varStatus="stat">		
			<tr>
			<td>${list.boardnum}</td>
			<td><a href="javascript:list_disp('saleLine${stat.index}')">${list.boardsubject}</a></td>			
			<td align="right"><fmt:formatDate value="${list.boarduptime}" pattern="yyyy-MM-dd" /></td>
			</tr> 
			
			<tr id="saleLine${stat.index}" class="saleLine">
				<td colspan="4" align="center">
					<table>
						<tr><th style="text-align:center;">내용</th></tr>						
						<tr><td>관리자:<br>${list.boardcontent}</td></tr><!-- 길어지면 <br>할수있게 설정하기 -->					
											
					</table>
				</td>			
			</tr>			
			</c:forEach>			
	</table>
</div>
<div id="minfo" class="info" style="display:none;">
	<table style="position:absolute; top:25%; width:26%; left:35%">
		<tr><th>번호</th><th>제목</th><th>보낸사람</th><th style="text-align:right">보낸날짜</th></tr>		
			<tr>
			<td>111</td>			
			<td><a href="#">121111111111</a></td>
			<td>1</td>			
			<td align="right">1234</td>
			</tr>
			<tr>
			<td>1</td>
			<td>12</td>
			<td>1</td>			
			<td align="right">1234</td>
			</tr>
			<tr>
			<td>1</td>
			<td>1</td>
			<td>12</td>			
			<td align="right">1234</td>
			</tr>
			<tr>
			<td>1</td>
			<td>1</td>
			<td>12</td>			
			<td align="right">1234</td>
			</tr>
			<tr>
			<td>1</td>
			<td>1</td>
			<td>12</td>			
			<td align="right">1234</td>
			</tr>			
	</table>	
</div>
</body>
</html>