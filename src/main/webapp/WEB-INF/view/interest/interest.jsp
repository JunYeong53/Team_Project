<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심사</title>
<script type="text/javascript">
	$(document).ready(function(){
		$('.d2').show();
		$('.d1').hide();
		$(window).resize(function (){
			  // width값을 가져오기
			  var width_size = window.outerWidth;
			  
			  // 800 이하인지 if문으로 확인
			  if (width_size <= 700) {
			    $('.d1').show();
			    $('.d2').hide();
			    
			  }
			  if (width_size > 700) {
				 $('.d2').show();
				 $('.d1').hide();
				}
			})
	})
</script>
</head>
<body>
<br>
<h1>비슷한 관심사를 가진 상대를 찾아보세요!</h1><br>
<br>

<div class="d1">
<table>
	<c:forEach begin="1" end="20" varStatus="status">
		<c:if test="${status.count % 3 == 1}">
			<tr>
		</c:if>
		<td>
			<a href="../interest/member.shop"><img src="" width="150" height="160"></a><br>
			관심사 이름 &nbsp; 참가 인원 : 0 명
		</td>
		<c:if test="${status.count % 3 == 0}">
			</tr>
		</c:if>
	</c:forEach>
</table>
</div>

<div class="d2">
<table>
	<c:forEach begin="1" end="20" varStatus="status">
		<c:if test="${status.count % 5 == 1}">
			<tr>
		</c:if>
		<td>
			<a href="../interest/member.shop"><img src="" width="150" height="160"></a><br>
			관심사 이름 &nbsp; 참가 인원 : 0 명
		</td>
		<c:if test="${status.count % 5 == 0}">
			</tr>
		</c:if>
	</c:forEach>
</table>
</div>

</body>
</html>