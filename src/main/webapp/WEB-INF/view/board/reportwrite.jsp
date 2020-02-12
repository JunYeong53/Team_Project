<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>
    <c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 신고</title>
<style>
   div {
      width:78%;
   }
   td {
      background-color : white;
   }
   
</style>
</head>
<body>
<br>
<h1>회원 신고</h1>
<br>
<div class="pull" style="position:absolute; left:22%">
   <div class="left">
      <img src="${path}/login/img/${user.profileurl1}" width="370" height="370">
   </div>
   
      <form action="reportsubmit.shop?id=${user.id}" method="post">
      <table style="width:30%; position:absolute; left:30%; border:1px solid;">
      <tr><th>신고대상 :</th><td>${user.nickname}</td></tr>
      <tr><th>신고사유</th><td><textarea rows="7" cols="" name="reportcontent"></textarea></td></tr>
      
      <tr><td colspan="2" style="text-align:center;"><input type="submit" value="신고하기"></td></tr>
      </table>
      </form>
   
</div>
</body>
</html>