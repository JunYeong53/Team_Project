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
        function close_reportmodal() {
           $('#reportuser').hide();
        }
        function open_detailmodal(id) {           
           $.ajax({
              type : "POST",
              url : "../ajax/usersearch.shop",
              data : {
                 "id" : id
              },
               success : function(data) {
                  $("#reportuser").hide();
                  $("#myModal").show();
                     $("#myModal").html(data);
                                          
                  }
           })
           
        }
        function good(id) {
            $.ajax({
             type : "POST",
             url : "../ajax/good.shop",
             data : {
                "id" : id
             },
             success : open_pop(id)
          })
       }
       
       function goodcancel(id) {
            $.ajax({
             type : "POST",
             url : "../ajax/goodcancel.shop",
             data : {
                "id" : id
             },
             success : open_pop(id)
          })
       }
       function selectreport(reportid, id) {          
          $.ajax({
           type: "POST",
           url : "../ajax/selectreport.shop",
           data : {
              "reportid" : reportid,
              "id" : id
           },
           success : function(data) {              
              if(data == '0') {
                 alert("이미 신고하셨습니다")
              } else {
                 reportuser(id)
              }
           }
          })
       }
       function reportuser(id) {
          $('#myModal').hide();
          $('#reportuser').show();
          $.ajax({
           type : "POST",
           url : "../ajax/reportuser.shop",
           data : {
              "id" : id              
           },
           success : function(data) {              
              $("#reportuser").html(data)           
           }
          
          })
       }
       function report(id) {
          var reportcolumn = $(".selectt option:selected").val();
          var reportcontent = $("#reportcontent").val();
          if(reportcolumn == "탭하여 선택해 주세요") {
             alert("위반항목을 골라주세요");
             return false;             
          }
          if(reportcontent == "") {
             alert("내용을 입력해주세요");
             return false;             
          }
          var reportid = '${loginUser.id}';          
          $.ajax({
           type : "POST",
           url : "../ajax/report.shop",
           data : {
              "id" : id,
              "reportid" : reportid,
              "reportcolumn" : reportcolumn,
              "reportcontent" : reportcontent
           },
           success : function(data) {
              alert("신고가 성공적으로 처리되였습니다.");
              $("#reportuser").hide();
           }
           
          })
       }
       
       
      </script>

<script type="text/javascript">
         $('html').click(function(e)   {            
             if($(e.target).hasClass("modal")) {
                $('#myModal').hide();
             }             
          });
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
            width: 900px; /* Could be more or less, depending on screen size */
            height: 70%;      
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
        .selectt {
      vertical-align: middle;
      outline: none;
         background: transparent;
         cursor: pointer;         
       color: #575757;
       font-weight: 700;
       border: 1px solid #d8d7dc;
       border-radius: 8px;
       padding: 8px;
       box-sizing: border-box;       
       padding-right: 48px;
   }
   option {
      font-weight: normal;
       display: block;
       white-space: pre;
         min-height: 1.2em;
          padding: 0px 2px 1px;
   }
    .reportuser {
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

        .reportuser-content {                 
            background-color: #fefefe;
            margin: 8% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 800px; /* Could be more or less, depending on screen size */
            height: 70%;      
            border-radius: 16px;
            display: flex;
            overflow : hidden; 
            overflow-y: scroll;                 
        }
        .reportuser-content::-webkit-scrollbar {
           display :none;
        }        
        
</style>
</head>
<body>
<c:set var="user" value="${user}"/>
<div class="d1">
   <div class="d1_1">
      <h1>상대방을 찾아보세요!</h1>
   </div>
   <div class="d1_2">
      <div class="d1_2">
         <a href="../search/searchscreen.shop">
            <span><i class="fas fa-search"></i></span><span style="padding-left: 10px;">설정</span></a>
      </div>
   </div>
</div>
<div class="d2">
   <c:forEach var="list" items="${userlist}" varStatus="status">
      <div class="d2_1">
         <div class="d2_1_1" onclick="javascript:open_pop('${list.id}')">
            <div class="d2_1_1_1">
               <div>
                  <img src="${path}/login/img/${list.profileurl1}">
               </div>
            </div>
            <div class="d2_1_1_2">
               <div class="d2_1_1_2_nic">
                  ${list.nickname}
               </div>
               <div class="d2_1_1_2_gre">
                  안녕하세요!
               </div>
            </div>
         </div>
         <div class="d2_1_2">
            <div class="d2_1_2_1">
               ${list.address} ${list.age}세
            </div>
         </div>
      </div>
   </c:forEach>
</div>
 <!-- The Modal -->
    <div id="myModal" class="modal">       
    </div>
    <div id="reportuser" class="reportuser"></div>
   
</body>
</html>