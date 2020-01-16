<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고목록</title>
<style type="text/css">
   table, td, th {
      border: 1px solid black
   }
   table {
      width:60%;
      height:100%;
      margin: auto;
      text-align: left;
   }
</style>
</head>
<body>
<h1>신고목록</h1>
<br>
<table>
         <tr><th width="20%">신고건수</th><th width="20%">신고자</th><th width="20%">신고대상자</th><th width="20%">신고날짜</th><th width="20">처리여부</th></tr>
         <c:forEach var="i" begin="0" end="10">
            <tr><td><a href="reportdetail.shop">건수</a></td>
            <td>신고자ID</td>
            <td>신고대상ID</td>
            <td>신고날짜</td>
            <td>Y/N</td></tr>
            </c:forEach>
         <%-- 페이지 부분 출력 --%>
            <tr><td colspan="5" align="center">
               <a href="">[이전]</a>
               <a href="">1 2 3</a>
               <a href="">[다음]</a>
            </td></tr>
</table>
</body>
</html>