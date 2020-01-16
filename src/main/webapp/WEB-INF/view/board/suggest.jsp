<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건의사항</title>
</head>
<body>
<h1>건의사항</h1>
<table>
			<tr><th width="10%">번호</th><th width="50%">제목</th><th width="20%">글쓴이</th><th width="20%">날짜</th></tr>
			<c:forEach var="i" begin="0" end="10">
				<tr><td>게시판번호</td>
				<td style="text-align: left;">
			<a href="suggestdetail.shop">제목</a></td>
				<td>이름</td><td>작성일</td>
				</tr>
				</c:forEach>
			<%-- 페이지 부분 출력 --%>
				<tr><td colspan="5" align="center">
					<a href="">[이전]</a>
					<a href="">1 2 3 4 5</a>
					<a href="">[다음]</a>
				</td></tr>
</table>
</body>
</html>