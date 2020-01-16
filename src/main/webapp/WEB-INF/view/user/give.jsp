<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
   $('html').click(function(e)   { 
      if($(e.target).hasClass("modal")) {
         $('#myModal').hide();
      }
      if($(e.target).hasClass("test")) {
         $('#test').hide();
      }
   });
})
</script>
 <style>        
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        
        .modal-content {                 
            background-color: #fefefe;
            margin: 8% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 40%; /* Could be more or less, depending on screen size */
            height: 550px;                       
        }
       
        
</style>
</head>
<body>
<br>
<h1>방문자</h1>
<br>

<div class="d1">
<table>
   <c:forEach begin="1" end="20" varStatus="status">
      <c:if test="${status.count % 3 == 1}">
         <tr>
      </c:if>
      <td>
         <img src="" width="150" height="160"><br>
         유저 닉네임 &nbsp; 유저 나이
      </td>
      <c:if test="${status.count % 3 == 0}">
         </tr>
      </c:if>
   </c:forEach>
</table>
</div>
<!-- The Modal -->
    <div id="myModal" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
          <div class="modal-left">
          <div class="mainimage"><img src="" width="210" height="200"><br>
          <img src="" width="68" height="50">&nbsp;<img src="" width="68" height="50">&nbsp;<img src="" width="68" height="50"><br>
          </div>
             <div class="age"><b>나이</b>&emsp;300살<br><b>거주지</b>&emsp;해외어딘가</div>
             <div class="good">
             </div>
          </div>
          <div class="modal-right">
         <div class="name"><font style=font-size:22px;><b>상대방이름</b></font>         
                   <a href="${path}/board/reportwrite.shop"><span style="font-size:15px; color:red; float:right;"><i class="fas fa-exclamation"></i>신고하기</span></a></div>
         <div class="dlstkakf">인사말~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>~~~~~~~~~~~~~~~~~~~</div> <!-- 일정길이 이상되면 br태그 추가 -->
         <div class="rhkstla"><b>n개의 관심사에 참여중~</b>&emsp;&emsp;<a href="#"><font style="font-size:10px">전부 보기</font></a><br>
         <img src="" width="80" height="60">&emsp;<img src="" width="80" height="60">&emsp;
         <img src="" width="80" height="60"><br>
         <img src="" width="80" height="60">&emsp;<img src="" width="80" height="60">&emsp;
          <img src="" width="80" height="60"></div>
         <div class="vmfhvlf"><b style="font-size:20px">상세 프로필</b><br>
            <b>키</b>&emsp;&nbsp;  2만<br><b>체형</b>&emsp; 돼지 <br>
            <b>학벌</b>&emsp;대졸<br> <b>연봉</b>&emsp;30억          
         </div>
          </div>
          <div class="foot">
            <button onclick="close_pop()" style="width:100%; border-radius: 5px; background-color: #00c1bf; color:white;">닫기</button>
         </div> 
      </div>      
    </div>
    
<div class="d2">
<table>
   <c:forEach begin="1" end="20" varStatus="status">
      <c:if test="${status.count % 5 == 1}">
         <tr>
      </c:if>
      <td>
         <a href="javascript:open_pop()"><img src="" width="150" height="160"></a><br>
         유저 닉네임 &nbsp; 유저 나이
      </td>
      <c:if test="${status.count % 5 == 0}">
         </tr>
      </c:if>
   </c:forEach>
</table>
</div>
    <script type="text/javascript"> 
       function open_pop() {
           $('#myModal').show();
       }
        function close_pop(flag) {
             $('#myModal').hide();
        };
       
      </script>
</body>
</html>