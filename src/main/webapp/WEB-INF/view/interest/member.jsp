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
        	 var userid = id;
        	 $('#myModal').show();
             $.ajax({
              type : "POST",
              url : "../ajax/usersearch.shop",
              data : {
                 "id" : userid
              },
              success : function(data) {               
                 $("#myModal").html(data)
              }
             
           })
         }
          function close_pop(flag) {
               $('#myModal').hide();
          };
          function join_interest(name){
        	  if(${itcnt} < 6){
      		$.ajax({
      			type : "POST",
      			url : "../ajax/joininterest.shop",
      			data : {
      				"interestname" : name
      			},
      			success : function(data){
      				location.reload();
      			}
      		})
        	  }else{
        		  alert("더이상 관심사에 가입 할수없습니다.")
        	  }
      	}
      	function delete_interest(name){
      		$.ajax({
      			type : "POST",
      			url : "../ajax/deleteinterest.shop",
      			data : {
      				"interestname" : name
      			},
      			success : function(data){
      				location.reload();
      			}
      		})
      	}
      	
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
        	display: flex;
        	align-items: center;
        }  
        .d1_1 img{
        	border-radius: 8px;
        }
        .d1_2{
        	flex-grow: 1;
        	padding-left: 20px;
        	font-size: 1.6rem;
        }
        .d1_3{
        	text-align: right;
        }
        .d1_3 button{
        	border-color: #f5f6f8;
 		    background: #f5f6f8;
		    color: #575757;
		    box-shadow: 0 2px 8px 0 rgba(0,0,0,.1);
		    border: 1px solid #575757;
		    border-radius: 100px;
		    line-height: 2;
		    padding: 10px 32px;
        }
        .space{
        	height: 50px;
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
</style>

</head>
<body>
<div class="d1">
	<div class="d1_1">
		<img src="../interest/${it.interestpicurl}" width="150" height="160">
	</div>
	<div class="d1_2">
		${it.interestname}
	</div>
	<div class="d1_3">
		<c:if test="${join == 1}">
			<button type="button" onclick="javascript:join_interest('${it.interestname}')">
				<i class="fas fa-plus"></i>&nbsp;
				참가하기
			</button>
		</c:if>
		<c:if test="${join == 2}">
			<button type="button" onclick="javascript:delete_interest('${it.interestname}')" 
				style="border-color: #00c1bf; background: #00c1bf; box-shadow: 0 2px 8px 0 rgba(0,199,205,.5); color: #fff;">
				<i class="fas fa-check"></i>&nbsp;
				참가중
			</button>
		</c:if>
	</div>
</div>
<div class="space"></div>
<div class="d2">
	<c:forEach var="userlist" items="${userlist}" varStatus="status">
		<div class="d2_1">
			<div class="d2_1_1" onclick="open_pop('${userlist.id}')">
				<div class="d2_1_1_1">
					<div>
						<img src="${path}/login/img/${userlist.profileurl1}">
					</div>
				</div>
				<div class="d2_1_1_2">
					<div class="d2_1_1_2_nic">
						${userlist.nickname}
					</div>
					<div class="d2_1_1_2_gre">
						안녕하세요!
					</div>
				</div>
			</div>
			<div class="d2_1_2">
				<div class="d2_1_2_1">
					${userlist.address} ${userlist.age}세
				</div>
			</div>
		</div>
	</c:forEach>
</div>
 <!-- The Modal -->
    <div id="myModal" class="modal">
      
    </div>
</body>
</html>