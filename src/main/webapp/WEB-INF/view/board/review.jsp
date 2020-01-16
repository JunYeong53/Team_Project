<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기</title>
<script>
   function listdo(page){
      document.page.pageNum.value=page;
      document.page.submit();
   }
</script>
</head>
<body>
<h1>후기</h1>
<form action="review.shop" method="post" name="page">
<input type="hidden" name="pageNum" value="1">
<table>
			<tr><th width="10%">번호</th><th width="50%">제목</th><th width="20%">글쓴이</th><th width="20%">날짜</th></tr>
			<c:forEach items="${reboardlist}" var="list">
				<tr><td>${boardno}</td><c:set var="boardno" value="${boardno - 1}" />
				<td style="text-align: left;">
			<a href="reviewdetail.shop?boardnum=${list.boardnum}">${list.boardsubject}</a></td>
				<td>${list.id}</td><td><fmt:formatDate value="${list.boarduptime}" pattern="yyyy-MM-dd" /></td>
				</tr>
				</c:forEach>
			<%-- 페이지 부분 출력 --%>
				<tr><td colspan="5" align="center">
					<c:if test="${pageNum > 1}"><a href="javascript:listdo(${pageNum - 1})">[이전]</a></c:if>
							<c:if test="${pageNum <=1}">[이전]</c:if>
			<c:forEach var="a" begin="${startpage}" end="${endpage}">
				<c:if test="${a == pageNum}">[${a}]</c:if>
				<c:if test="${a != pageNum}"><a href="javascript:listdo(${a})">[${a}]</a></c:if>
			</c:forEach>
			<c:if test="${pageNum < maxpage}"><a href="javascript:listdo(${pageNum + 1})">[다음]</a></c:if>
			<c:if test="${pageNum >= maxpage}">[다음]</c:if>
				</td></tr>
</table>
</form>
<a href="reviewwrite.shop">[글쓰기]</a>
</body>
</html>