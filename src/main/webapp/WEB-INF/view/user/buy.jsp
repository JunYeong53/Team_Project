<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매내역</title>
<style>
div.blueTable {
   background-color: #F4F4F4;
   width: 100%;
   text-align: center;
   border-collapse: collapse;
}

.divTableHead{
    border: 0px solid #AAAAAA;
   padding: 5px 5px;
}

.divTable.blueTable .divTableCell, .divTable.blueTable {
   border: 0px solid #AAAAAA;
   padding: 25px 25px;
}  

.divTable.blueTable .divTableBody .divTableCell {
   font-size: 15px;
   color: #000000; 
}

.divTable.blueTable .divTableCell:nth-child(even) {
   background: #D8D5F5;
}

.divTable.blueTable .divTableHeading {
   background: #393BD1;
   background: -moz-linear-gradient(top, #6a6cdc 0%, #4c4ed5 66%, #393BD1 100%);
   background: -webkit-linear-gradient(top, #6a6cdc 0%, #4c4ed5 66%, #393BD1 100%);
   background: linear-gradient(to bottom, #6a6cdc 0%, #4c4ed5 66%, #393BD1 100%);
   border-bottom: 2px solid #444444;
}

.divTable.blueTable .divTableHeading .divTableHead {
   font-size: 15px;
   font-weight: bold;
   color: #FFFFFF;
   text-align: center;
   border-left: 2px solid #D0E4F5;
}

.divTable.blueTable .divTableHeading .divTableHead:first-child {
   border-left: none;
}

.blueTable .tableFootStyle {
   font-size: 13px;
   font-weight: bold;
   color: #FFFFFF;
   background: #FFFFFF;
   background: -moz-linear-gradient(top, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
   background: -webkit-linear-gradient(top, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
   background: linear-gradient(to bottom, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
   border-top: 2px solid #444444;
}

.blueTable .tableFootStyle {
   font-size: 13px;
}

.blueTable .tableFootStyle .links {
   text-align: right;
}

.blueTable .tableFootStyle .links a {
   display: inline-block;
   background: #7969F5;
   color: #F4F4F4;
   padding: 2px 8px;
   border-radius: 5px;
}

.blueTable.outerTableFooter {
   border-top: none;
}

.blueTable.outerTableFooter .tableFootStyle {
   padding: 3px 5px;
}
/* DivTable.com */
.divTable {
   display: table;
}

.divTableRow {
   display: table-row;
}

.divTableHeading {
   display: table-header-group;
}

.divTableCell, .divTableHead {
   display: table-cell;
}

.divTableHeading {
   display: table-header-group;
}

.divTableFoot {
   display: table-footer-group;
}

.divTableBody {
   display: table-row-group;
}
.pa{
padding-top: 130px;
} 
</style>
</head>
<body>
<div class="pa">
   <div class="divTable blueTable">
      <div class="divTableHeading">
         <div class="divTableRow">
            <div class="divTableHead">구매자</div>
            <div class="divTableHead">상품</div>
            <div class="divTableHead">가격</div>
            <div class="divTableHead">구매날짜</div>
         </div>
      </div> 
      <c:forEach var="buylist" items="${buylist}">
      <div class="divTableBody">
         <div class="divTableRow">
            <div class="divTableCell">${buylist.id}</div>
            <div class="divTableCell">좋아요 ${buylist.buycnt}개</div>
            <div class="divTableCell">${buylist.buyprice}원</div>
            <div class="divTableCell">
            	<fmt:formatDate value="${buylist.buyday}" pattern="yyyy-MM-dd" />
            </div>
         </div>
      </div>
      </c:forEach>
   </div>
   <div class="blueTable outerTableFooter">
      <div class="tableFootStyle">
         <div class="links">
            <a href="#">&laquo;</a> <a class="active" href="#">1</a> <a href="#">2</a>
            <a href="#">3</a> <a href="#">4</a> <a href="#">&raquo;</a>
         </div>
      </div>
   </div>
</div>
</body>
</html>