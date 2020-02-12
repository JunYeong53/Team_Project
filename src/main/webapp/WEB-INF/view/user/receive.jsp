<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 받은 좋아요</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.mySlides {display:none}
.myText {display:none}
</style>

<script>
$(function(){
   showDivs(0);
})

      var slideIndex = 1;
      showDivs(slideIndex);
   
      function plusDivs(n) {
        showDivs(slideIndex += n);
      }
      
      function currentDiv(n) {
        showDivs(slideIndex = n);
      }
      
      function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("card-box");
        var dots = document.getElementsByClassName("demo");
        if (n > x.length) {slideIndex = 1}    
        if (n < 1) {slideIndex = x.length}
        for (i = 0; i < x.length; i++) {
          x[i].style.display = "none";  
        }
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" w3-red", "");
        }
        x[slideIndex-1].style.display = "block";  
        dots[slideIndex-1].className += " w3-red";
      }
   
         function open_pop(id) {         
              $('#myModal').show();
              $.ajax({
               type : "POST",
               url : "../ajax/usersearch.shop",
               data : {
                  "id" : id
               },
               success : function(data) {               
                  $("#myModal").html(data)
               }
              
            })
          }
           function close_pop(flag) {
                $('#myModal').hide();
           }
           
       function good() {
          var obj = document.getElementsByName("test");
          var id = obj[slideIndex - 1].value;
          
            $.ajax({
             type : "POST",
             url : "../ajax/good.shop",
             data : {
                "id" : id
             },
             success : function(data) { 
                conreload();
                $(".links").append('<li style="margin-top: 0;"><div style="padding: 8px; display: flex; align-items: center;">'+
                '<a href="${path}/chat/chat.shop?chatnum='+data.c_num+'" style="width: 100%;"><div class="left">'+
                '<img width="100" height="100" src="${path}/login/img/'+data.c_img+'"></div><div class="right" style="padding-left: 5%;">'+
                '<p>'+data.c_nick+'</p><p>'+data.c_addr+','+data.c_age+'</p><p>매칭성공</p></div></a></div></li>');
                $('body').prop('class','single is-menu-visible');
             }
          })
          
       }
       function conreload(){
    	   //$(".card-main").load("receive.shop").fadeIn("slow");
    	   //chatreload();
    	   $(".body_con").load(window.location.href+" .body_con");
       }
       function chatreload(){
    	   $("#menu").load(window.location.href+" #menu");
       }
       
       function passing() {
          var obj = document.getElementsByName("test");
          var id = obj[slideIndex - 1].value;
          
            $.ajax({
                type : "POST",
                url : "../ajax/passing.shop",
                data : {
                   "id" : id
                },
                success : function(data) { 
                   alert(data)
                   location.reload();
                }
             })
       }

</script>

<style type="text/css">
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
            width: 900px; /* Could be more or less, depending on screen size */
            height: 75%;      
            border-radius: 16px;
            display: flex;               
        }
        .modal_d1{
           height: 100%;
           padding: 16px;
           padding-bottom: 0;
           box-sizing: border-box;
           flex-basis: 45%;
        }
        .modal_d1_1{
           position: relative;
        }
        .modal_d1_1_1{
           height: 329px;
        }
        .photo_space{
           height: 16px;
        }
        .modal_d1_2{
           height: 125px;
           overflow: hidden;
        }
        .modal_d1_2_1{
           padding: 6px;
        }
        .modal_d1_2_1_1{
           display: flex;
           flex-flow: row wrap;
           justify-content: space-between;
           align-items: flex-start;
        }
        .modal_d1_2_1_1_pic{
           flex-basis: 33.3333%;
           padding-top: 4px;
           padding-bottom: 4px;
           padding-right: 4px;
           padding-left: 4px;
        }
        .modal_d1_3{
           display: inline-block;
           width: 100%;
        }
        .modal_bu_like{
           width: 85px;
           height: 85px;
           display: inline-block;
           border-radius: 50px;
           background: white;
           color: #00c1bf;
           padding: 0px 10px 10px 10px;
           text-align: center;
           margin-right: 10%;
           margin-left: 20%;
        }
        .modal_bu_like_cancel{
           width: 85px;
           height: 85px;
           display: inline-block;
           border-radius: 50px;
           background: white;
           color: #00c1bf;
           padding: 0px 10px 10px 10px;
           text-align: center;
           margin-right: 10%;
           margin-left: 20%;
        }
        .modal_bu_report{
           width: 85px;
           height: 85px;
           display: inline-block;
           border-radius: 50px;
           background: white;
           color: #a81329;
           padding: 0px 10px 10px 10px;
           text-align: center;
        }
        .modal_d2{
           flex-basis: 55%;
           height: 100%;
           padding: 16px;
           padding-bottom: 0;
           box-sizing: border-box;
        }
        .modal_d2_1{
           height: 100%;
        }
        .modal_d2_1_1{
           height: 100%;
           overflow: hidden;
        }
        .modal_d2_1_1_1{
           font-size: 1.5rem;
        }
        .modal_d2_1_1_1_nick{
           font-weight: 700;
           font-size: 2.0rem;
        }
        .modal_d2_1_1_1_adrage{
           font-weight: 700;
           font-size: 1.2rem;
        }
        .modal_d2_1_1_1_gre{
           color: #b4b4b4;
           font-size: 1.2rem;
        }
        .modal_hr{
           padding: 5px 0;
           text-align: center;
        }
        .modal_d2_1_1_2_itname{
           font-weight: 700;
           font-size: 1.2rem;
        }
        .modal_d2_1_1_2_itbody{
           display: flex;
           flex-flow: row wrap;
           align-items: flex-start;
        }
        .modal_d2_1_1_2_itbody_con{
           flex-basis: 33.3333%;
           text-align: center;
           font-size: 1.2rem;
           padding: 4px;
           box-sizing: border-box;
        }
        .modal_profile_title{
           font-weight: 700;
           font-size: 1.4rem;
        }
        .modal_prof_state{
           padding: 6px 0;
        }
        .modal_prof_title{
           display: inline-block;
           color: #b4b4b4;
        }
        .modal_prof_body{
           display: inline-block;
        }
       .d1{
             height: 120px;
             padding: 0;
             display: flex;
             align-items: center;
             justify-content: space-between;
       }
       .d1_1 h1{
             color: #575757;
             font-size: 2.2rem;
             font-weight: 700;
       }
       .d1_2 a{
             border: 1px solid #fff;
             background: #fff;
             box-shadow: 0 2px 8px 0 rgba(0,0,0,.1);
             border-radius: 100px;
             color: #00c1bf;
             line-height: 2;
             padding: 16px 30px;
       }
       .d2{
           display: flex;
           flex-flow: row wrap;
           justify-content: space-between;
        }
        .d2_1{
           width: 200px;
           padding-top: 16px;
           padding-bottom: 16px;
        }
        .d2_1_1{
           position: relative;
           padding-right: 4px;
           padding-left: 4px;
        }
        .d2_1_1_1 img{
           border-radius: 8px;
           width: 200px;
           height: 200px;
        }
        .d2_1_1_2{
           opacity: 0;
           position: absolute;
        }
        .d2_1_1:hover .d2_1_1_2{
           display: flex;
           flex-direction: column;
           justify-content: center;
           background: rgba(0,0,0);
           opacity: 0.7;
           color: #fff;
           position: absolute;
           top: 0;
           left: 5px;
           width: 200px;
            height: 200px;
            border-radius: 8px;
            padding-right: 4px;
            padding-left: 4px;
        }
        .d2_1_1_2_nic{
           font-size: 1.2rem;
           text-align: center;
        }
        .d2_1_1_2_gre{
           text-align: center;
           margin-top: 10px;
           padding: 0 10px;
        }
        .d2_1_2{
           margin-top: 10px;
           display: flex;
           justify-content: space-between;
        }
        .d2_1_2_1{
           font-size: 1.3rem;
           font-weight: 700;
        }
   table, td {
      border: 1px solid black
   }
   
   table {
      width:70%;
      height:100%;
      margin: auto;
      text-align: left;
   }
   .card-part4 {
      margin: 2% auto;
   }
   .card-part5 {
      margin: 2% auto
   }
   .card-main {
   background-color: #fefefe;
   margin: 2% auto; /* 15% from the top and centered */
   padding: 20px;
   border: 1px solid #888;
   width: 900px; /* Could be more or less, depending on screen size */
   height: 75%;      
   border-radius: 16px;
   display: flex;     
   }
   .card-title {
      font-weight: bold;
      font-size: 2.0rem;
   }
   .card-age{
   font-weight: bold;
         text-align: left;
   }
   .info {
      align: right;
   }
   .card-content, .card-image, .card-title, .card-nick, .card-age{
   display: inline-block;
   }
   .card-box-left {
     background: white;
     float: left;
     width: 50%;
   }
   .card-box-right {
     background: white;
     float: right;
     width: 50%;
   }
   .card-interest {
   position: relative;
    background-color: #BDBDBD;
   border: 1px solid #888;    
   border-radius: 8px;
   display: inline-block;  
   }
   .ivory {
   color:#b4b4b4;
   }
</style>
</head>
<body>

<div class="body_con">
<br>
<h1 style="color: #575757; font-size: 2.2rem; font-weight: 700;">내가 받은 좋아요!</h1><br>

<c:if test="${empty list}">
<p style="text-align: center;"><img src="${pageContext.request.contextPath}/decorator/images/receive.jpg" width="400px" height="300px"></p>
<center><h1>아직 상대방에게 받은 좋아요 가 없어요!</h1></center>
</c:if>

<c:if test="${!empty list}">

<c:forEach items="${list}" var="list" varStatus="status">
<div class="card-box">

<div class="card-main">
   <div class="card-box-left">
      <div class="card-image" id="slide" style="max-width:400px">
        <img class="card-slide" src="${path}/login/img/${list.profileurl1}" width="400px" height="400px">
      </div>
      </div>
      
      <div class="card-box-right">
         <div class="card">
            <div class="card-part1">
               <div class="card-title">${list.nickname}
            <input type="hidden" value="${list.id}" id="${status.index}" name="test">
               </div>
            </div>
            <div class="card-part2">   
               <div class="card-age">${list.address}&nbsp;${list.age}세</div>
            </div>
            <div class="card-part3">
               <div class="card-comment">${list.greeting}</div>
            </div>
            <div class="card-part4">

            <c:if test="${!empty list.interestname1}">
               <div class="card-interest">
                  ${list.interestname1}
               </div>
            </c:if>
               <c:if test="${!empty list.interestname2}">
               <div class="card-interest">
                  ${list.interestname2}
               </div>
               </c:if>
               <c:if test="${!empty list.interestname3}">
               <div class="card-interest">
                  ${list.interestname3}
               </div>
               </c:if>
               <c:if test="${!empty list.interestname4}">
               <div class="card-interest">
                  ${list.interestname4}
               </div>
               </c:if>
               <c:if test="${!empty list.interestname5}">
               <div class="card-interest">
                  ${list.interestname5}
               </div>
               </c:if>
               <c:if test="${!empty list.interestname6}">
               <div class="card-interest">
                  ${list.interestname6}
               </div>
               </c:if>
            </div>
            <div class="card-part5">
               <div class="card-height">
                  <c:if test="${!empty list.height}">
                     <div class="ivory">키</div> : ${list.height}
                  </c:if>
               </div>
            </div>
            <div class="card-part6">
               <div class="card-body">
                  <c:if test="${!empty list.body}">
                     <div class="ivory">체형</div> : ${list.body}
                  </c:if>
               </div>
            </div>
         </div>
   </div>
   <div>
      <img class="info" src="${pageContext.request.contextPath}/decorator/images/info.PNG" onclick="javascript:open_pop('${list.id}')">
   </div>
   </div>

</div>
</c:forEach>

    <div id="myModal" class="modal">
       
    </div>

<div class="w3-center">
  <div class="w3-section" align="center">
  <img class="info" src="${pageContext.request.contextPath}/decorator/images/pass.PNG" onclick="javascript:plusDivs(-1)">&nbsp;&nbsp;&nbsp;
  <i class="fas fa-user-times" style="font-size: 4.0rem;" onclick="javascript:passing()"></i>&nbsp;&nbsp;&nbsp;
  <img class="like" src="${pageContext.request.contextPath}/decorator/images/like.PNG" onclick="javascript:good()">
  </div>
</div>
</c:if>
</div>

</body>
</html>