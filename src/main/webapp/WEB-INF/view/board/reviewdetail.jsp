<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
   <table>
      <tr>
         <th>제목</th>
         <td>${board.boardsubject}</td>
      </tr>
      <tr>
         <th>작성자</th>
         <td>${board.id}</td>
      </tr>
      <tr>
         <th>내용</th>
         <td>${board.boardcontent}</td>
      </tr>
      <tr>
         <th>작성일</th>
         <td><fmt:formatDate value="${board.boarduptime}" pattern="yyyy-MM-dd" /></td>
      </tr>
      <tr>
         <td colspan="2" style="text-align: right;">
            <button onclick="location.href='review.shop'" type="button">목록</button>        
         </td>
      </tr>
   </table>
</body>
</html>