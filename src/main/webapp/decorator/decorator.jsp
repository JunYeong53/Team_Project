<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML>
<!--
   Future Imperfect by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
   
      <title>PINGLE</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${path}/decorator/assets/css/main.css" />
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdn.ckeditor.com/4.13.1/basic/ckeditor.js"></script>
      <script src="https://kit.fontawesome.com/9e0947a00b.js" crossorigin="anonymous"></script>
      <script type="text/javascript">
   $(document).ready(function(){
   $('html').click(function(e)   {      
      if($(e.target).hasClass("test")) {
         $('#test').hide();
      }
      });
   });
   </script>
      <decorator:head />
      <!-- 
      <link rel="stylesheet" href="${path}/css/main.css">
       -->
       
       <style type="text/css">
       body{
          background: white;
       }
          div.left {
            width: 50%;
              float: left;
              box-sizing: border-box;
          }
          div.right {
             width: 50%;
             float: right;
           box-sizing: border-box;
          }
        .modal-left {                
                 height: 90%; width:50%; float:left;  padding-bottom: 0; box-sizing: border-box;
        }
        .modal-right {                
              height: 90%; width:50%; float:left; padding-bottom: 0; box-sizing: border-box;
        }
       .test {
           display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(255,255,255,0.0); /* Black w/ opacity */
        }
         .mypage {         
          margin-top:22%;
          width: 40px;
          height: 40px;
          border-radius: 70%;
          overflow: hidden;
       }

       .test-content { 
         border: 1px solid;
        border-radius: 30px;                
         background-color: #fefefe;
         margin-left:79%;
         margin-top:5%;
            padding: 20px;           
            width: 20%; /* Could be more or less, depending on screen size */
            height: 550px; 
            box-shadow: 0 4px 10px 0 rgba(0,0,0,.3);                     
        }
       .myimage {
          width:   100px;
          height: 100px;
          border-radius: 70%;
          overflow: hidden;
       }
       .icon {          
          width: 100%;
          object-fit: cover;
          height: 100%;
       }
       .img {          
          width: 100%;
          object-fit: cover;
          height: 100%;
       } 
       </style>
   </head>
   <body class="single is-preload">

      <!-- Wrapper -->
         <div id="wrapper" style="padding-top: 1%; overflow: hidden;">
            <!-- Header -->
               <header id="header">
                  <nav class="links">
                     <ul>
                        <li><a href="${path}/user/usersearch.shop"><i class="fas fa-search"></i>인연 찾기</a></li>
                        <li><a href="${path}/interest/interest.shop"><i class="fas fa-users"></i>관심사</a></li>
                        <li><a href="${path}/user/receive.shop"><i class="fas fa-thumbs-up"></i>내가 받은 좋아요</a></li>
                        <li class="menu"><a href="#menu"><i class="fas fa-comment"></i>채팅</a></li>
                        <c:if test="${loginUser.id=='admin'}"><li><a href="${path}/board/noticewrite.shop">공지작성</a></li></c:if>
                     </ul>
                  </nav>
                  <nav style="margin-right:2%; padding-top:5px;">
                     <ul>
                        <li class="mypage"><a href="javascript:open_test()"><img src="${path}/login/img/${proflieurl}" class="icon"></a></li>                                                
                     </ul>                     
                  </nav>
               </header>
               <!-- Menu -->
               <section id="menu">

                  <!-- Search -->
                     <div style="padding-bottom: 0;">
                        <form class="chat" method="get" action="#">
                           <h1 style="color: #575757;">채팅방</h1>
                        </form>
                     </div>

                  <!-- Links -->
                     <div style="border-top: 0px; padding-top: 0; padding-bottom: 0;" class="cr">
                        <ul class="links">
                           <c:forEach var="chatlist" items="${chatlist}">
                           <li style="margin-top: 0;">
                              <div style="padding: 8px; display: flex; align-items: center;">
                              <a href="${path}/chat/chat.shop?chatnum=${chatlist.chatnum}" style="width: 100%;">
                                 <div class="left">
                                 <img width="100" height="100" src="${path}/login/img/${chatlist.user.profileurl1}">
                                 </div>
                                 <div class="right" style="padding-left: 5%;">
                                 <p>${chatlist.user.nickname}</p>
                                 <p>${chatlist.user.address},${chatlist.user.age}</p>
                                 <p>매칭성공</p>                                 
                                 </div>
                              </a>
                              </div>
                           </li>
                           </c:forEach>
                        </ul>
                     </div>                  
               </section>

            <!-- Main -->
               <div id="main">
                  <div id="test" class="test">
       <div class="test-content">
          <div class="modal-left">
             <div class="myimage"><img src="${path}/login/img/${proflieurl}" class="img"></div>
             <div style="margin-top:10px;"><a href="${path}/board/notice.shop">공지사항</a></div><br>
            <c:if test="${loginUser.id!='admin'}"><div><a href="${path}/board/suggestwrite.shop">건의작성</a></div></c:if>
            <c:if test="${loginUser.id=='admin'}"><div><a href="${path}/board/suggest.shop">건의사항</a></div></c:if><br>
            <div><a href="${path}/board/review.shop">후기</a></div><br>
             <c:if test="${loginUser.id != 'admin'}"><div class="visit"><a href="${path}/user/history.shop">방문자</a></div><br>
             <div class="like"><a href="${path}/user/give.shop">내가 보낸 좋아요</a></div><br>
             <div><a href="${path}/board/promise.shop">내가 보낸 약속</a></div><br></c:if>
             <c:if test="${loginUser.id == 'admin'}"><div><a href="${path}/board/report.shop">신고목록</a></div><br></c:if>
             <div class="logout"><a href="${path}/user/logout.shop">로그아웃</a></div>
          </div> 
          <div class="modal-right">
             <div class="name"><b>${loginUser.nickname}님</b></div>
             <div class="vmfhvlf">
             <button style="width:100%; height:100%; border-radius: 50px; padding-top:5px; background-color: #00c1bf;" onclick="location.href='${path}/user/mypage.shop?id=${loginUser.id}'">
             <span style="font-size:17px; color:white; "><i class="fas fa-cog"></i>프로필 편집</span>
             </button>
             </div>
             
          </div>
          
       </div>
    </div>
                  <decorator:body />
               </div>

         </div>

      <!-- Scripts -->
         <script src="${path}/decorator/assets/js/jquery.min.js"></script>
         <script src="${path}/decorator/assets/js/browser.min.js"></script>
         <script src="${path}/decorator/assets/js/breakpoints.min.js"></script>
         <script src="${path}/decorator/assets/js/util.js"></script>
         <script src="${path}/decorator/assets/js/main.js"></script>
          <script type="text/javascript">        
       
        function open_test() {
             $('#test').show();
            }
          function close_test(flag) {
               $('#test').hide();
          }; 
      </script>

   </body>
</html>