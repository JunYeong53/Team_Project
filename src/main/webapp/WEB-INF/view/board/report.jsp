<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매내역</title>
<style type="text/css">
   .content {
      font-size: 1.5rem; font-weight: 700; 
         }
         .content2 {
      font-size: 1.5rem; font-weight: 700; 
         }
   .subject {
      font-size: 1.8rem; font-weight: 700; color : cadetblue; 
   }
</style>
<script type="text/javascript">
$(document).ready(function() {
   $(".saleLine").each(function() {
         $(this).hide();
      })
      
   $(".content2").hover(function() {
      $(this).css('color',"cadetblue");
   },function() {
        $(this).css('color','#646464');
    });
})
function list_disp(id) {
   $("#"+id).toggle(); 
   }
   function userdelete(reportid, id) {
      var result = confirm("정말 탈퇴시키겠습니까?");   
      if(result) {
         location.href="../user/userdelete.shop?reportid="+reportid+"&id="+id;
      }
      else {
         alert("탈퇴취소");
         return false;
      }
   }
 
</script>
</head>
<body>
<h1 style="padding:30px; color: #575757; font-size: 2.2rem; font-weight: 700;">신고목록</h1>

<div style="display: flex; flex-wrap: wrap; flex-flow: row wrap; align-items: flex-start;">
   <div style="width: 70%; padding-top: 8px; padding-bottom: 8px; margin: auto;">   
      <div style="padding-left: 0px; padding-right: 0px;">
      <div style="margin: 10px;">
         <div style="position: relative; display: flex; align-items: center;">
         <div class="subject" style="padding-right:59px;">신고인</div>
         <div class="subject" style="padding-right:115px;">피신고인</div>
         <div class="subject" style="padding-right:170px;">위반항목</div>
         <div class="subject" style="padding-right:95px;">신고날짜</div>
         <div class="subject">탈퇴처리</div>
         </div>
         </div>
      </div>
      <c:forEach var="relist" items="${relist}" varStatus="stat">
         <div style="border: 1px solid #d8d7dc; border-radius: 10px; margin: 10px;">
            <div style="position: relative; padding: 20px; padding-right: 50px; display: flex; align-items: center;">
               <div class="content" style="width:15%">${relist.reportid}</div>
               <div class="content" style="width:15%">${relist.id}</div>               
               <div  class="content2" style="cursor: pointer; width:25%;text-align:center;" onclick="javascript:list_disp('saleLine${stat.index}')">${relist.reportcolumn}</div>
               <div class="content" style="width:35%; text-align:center;"><fmt:formatDate value="${relist.reporttime}" pattern="yyyy-MM-dd" /></div>
               <div class="content" style="width:10%"><button style="padding: 0 1em; border-radius: 50px; background: cadetblue; color: white; height: 50px;
                               line-height: 0;" onclick="javascript:userdelete('${relist.reportid}','${relist.id}')">강제탈퇴</button></div>               
            </div>
             <div id="saleLine${stat.index}" class="saleLine">
                        <div style="font-size: 1.2rem; font-weight: 600;  padding: 15px; padding-bottom: 10px;">
                          상세 내용 : ${relist.reportcontent}
                        </div>
                     </div>            
         </div>
      </c:forEach>      
      </div>
   </div>

</body>
</html>