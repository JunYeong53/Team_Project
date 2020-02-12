<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/jspHeader.jsp" %>
<%-- /webapp/WEB-INF/view/user/delete.jsp --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PINGLE</title>

<script type="text/javascript">
   function inchk(f) {
      if(f.pass.value == ""){
         alert("현재 비밀번호를 입력하세요");
         f.pass.focus();
         return false;
      }
      if(f.chgpass.value == ""){
         alert("변경 비밀번호를 입력하세요");
         f.chgpass.focus();
         return false;
      }
      if(f.chgpass.value != f.chgpass2.value) {
         alert("변경 비밀번호 와 변경 비밀번호 재입력이 다릅니다.");
         f.chgpass2.value="";
         f.chgpass2.focus();
         return false;  
      } 
      return true; 
   }
</script>

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
            <div class="divTableHead">비밀번호 변경</div>  
         </div>
      </div>  
      <div class="divTableBody">
         <div class="divTableRow">
            <div class="divTableCell">
               <form action="password.shop" method="post" name="f" onsubmit="return inchk(this)">
                     <div style="float: left;"> 
                        <div style="margin-bottom: 15px;">현재 비밀번호 <input type="password" name="pass" style="margin-left: 60px;"></div>
                     </div>    
                     <div style="float: left;">
                        <div style="margin-bottom: 15px; ">변경 비밀번호 <input type="password" name="chgpass" style="margin-left: 60px;"></div>
                     </div>
                     <div style="float: left;">
                        <div style="margin-bottom: 15px;">변경 비밀번호 재입력 <input type="password" name="chgpass2" style="margin-left: 10px;"></div>
                     </div>
                  </form>  
            </div>     
         </div>
         <div colspan="2" style="margin-bottom: 45px;"><input type="submit" value="비밀번호 변경"></div>
      </div>   
   </div> 
</div> 
</body>
</html>   