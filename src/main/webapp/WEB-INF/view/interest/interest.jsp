<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심사</title>

<style type="text/css">
	.d1{
		display: flex;
		flex-flow: row wrap;
		justify-content: space-between;
	}
	.d2{
		width: 240px;
  		padding-top: 16px;
    	padding-bottom: 16px;
	}
	.d3{
		padding-right: 4px;
    	padding-left: 4px;
	}
	.d4{
		padding: 10px;
		border: 1px solid #d8d7dc;
		border-radius: 10px;
		display: flex;
		align-items: center;
	}
	.d5_left{
		
	}
	.intimg{
		width: 60px;
   		height: 60px;
   		border-radius: 100%;
	}
	.d5_right{
		padding-left: 10px;
		font-size: 17px;
	}
</style>

</head>
<body>
<br>
<h1 style="color: #575757; font-size: 2.2rem; font-weight: 700;">비슷한 관심사를 가진 상대를 찾아보세요!</h1><br>
<br>

<div class="d1">
	<c:forEach var="interestlist" items="${interestlist}" varStatus="status">
	<div class="d2">
		<div class="d3">
			<div class="d4" onclick="javascript:location.href='../interest/member.shop?interestname=${interestlist.interestname}'">
				<div class="d5_left">
					<img src="../interest/${interestlist.interestpicurl}" class="intimg">
				</div>
				<div class="d5_right">
					${interestlist.interestname}
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
</div>

</body>
</html>