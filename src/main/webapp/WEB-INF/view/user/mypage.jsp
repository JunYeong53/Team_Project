<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" /> 
<%-- /WEB-INF/view/user/mypage.jsp --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet"> 
<title>MyPage</title>
<script>
 
   function imgup_ck3() {
      var op = "width=500, height=500, left=50, top=150";
     open("imgup3.shop", "", op);
   }
   function imgup_ck() {
      var op = "width=500, height=500, left=50, top=150";
      open("imgup.shop", "", op);
   }
   function imgup_ck2() {
      var op = "width=500, height=500, left=50, top=150";
      open("imgup2.shop", "", op);
   }
   function imgde_ck(url, num, id){
      $.ajax({
         type : "POST",
         url : "../ajax/profiledelete.shop",
         data : {
            "url" : url,
            "num" : num,
            "id" : id
         },
         success : function(data){
            location.reload();
         }
      })
   }

</script>
 
<style>
.square_btn
    { 
    float: right;
    border-bottom: none;
    } 
#tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8 
    {
     vertical-align: middle;
    }

.myButton {
   background-color:#2EE59D;
   border-radius:28px;
   display:inline-block; 
   cursor:pointer;
   color:#ffffff; 
   font-family:Times New Roman;
   font-size:18px;
   padding:1px 18px;
   text-decoration:none;
   text-shadow:0px 1px 0px #2f6627;
   margin-bottom: 10px;
} 
.myButton:hover {
   background-color:#5cbf2a;
} 
.myButton:active {
   position:relative;
   top:1px;
}
#o4{
   padding: 1px;
}
#o5{
   padding: 1px;
}
</style>
   
</head> 
<body> 
 
<table style="background: #393BD1; color: white;">
   <tr>
   <td>MY 프로필</td> 
   </tr>             
</table>
<%-- 회원 정보 출력 --%>
   <div>    
      <div class="row">   
         <div class="col-3">   
            <div style="display: flex;">
            <form  action="imgupload.shop" method="post" name="img_f">
            <input type="hidden" name="check" value="">  
            <td><img src="${path}/login/img/${user.profileurl1}" width="70%" height="200" style="display: block;" id="mainimg"></td> 
            <input type="hidden" name="profileurl1" value="">
            <a href="#" class="myButton" id="tag7" onclick="btn_ck('tag7','to7')">+</a>
            &nbsp;
            <button class="buttonout" id="o4" onclick="imgup_ck3()" type="button">수정</button>
            <button class="buttonout" id="o4" type="submit">저장</button> 
            <div>       
            <div id="to7" class="btn" style="display:none";>   
             <div style="margin-bottom: 20px;">
                <c:if test="${!empty user.profileurl2}">
                   <img src="${path}/login/img/${user.profileurl2}" width="85%" height="200px" id="imgplus" >
                </c:if>
                <c:if test="${empty user.profileurl2}">
                   <img src="" width="85%" height="200px" id="imgplus" >
                </c:if>
                 <input type="hidden" name="profileurl2" value=""> 
                 <button class="buttonout" id="o4" onclick="imgup_ck()" type="button">
                    <c:if test="${empty user.profileurl2}">
                          추가
                    </c:if>
                    <c:if test="${!empty user.profileurl2}">
                          수정
                    </c:if>
                 </button>
                 <button class="buttonout" id="o4" type="submit">저장</button>  
                 <button class="buttonout" id="o5" onclick="imgde_ck('${user.profileurl2}', 2, '${user.id}')" type="button">삭제</button>  
             </div> 
             <c:if test="${!empty user.profileurl2}">
             <div><img src="${path}/login/img/${user.profileurl3}" width="85%" height="200px" id="imgplus2">
              <input type="hidden" name="profileurl3" value="">
              <button class="buttonout" id="o4" onclick="imgup_ck2()" type="button">
                 <c:if test="${empty user.profileurl3}">
                      추가
                 </c:if>
                 <c:if test="${!empty user.profileurl3}">
                      수정
                 </c:if>
              </button>
              <button class="buttonout" id="o4" type="submit">저장</button> 
              <button class="buttonout" id="o5" onclick="imgde_ck('${user.profileurl3}', 3, '${user.id}')" type="button">삭제</button>
             </div>
             </c:if>  
            </div>  
            </div>
            </form> 
            </div>        
         </div>     
      <div class="col-9">  
      
   <form action="mypage.shop" method="post">
       <table>  
               <tr>      
                  <td>인사말</td>
                  <td>${user.greeting} 
                  <a href="#" class="square_btn" id="tag1" onclick="btn_ck('tag1','to1')"> 
                        <i class="fa fa-chevron-right"></i>
                  </a>
                  </td> 
               </tr> 
                     <tr id="to1" class="btn" style="display:none";>
                        <td><input type="text" name="greeting"></td>
                        <td><input type="submit" value="수정"></td>
                     </tr>
               <tr>
                  <td>닉네임</td>
                  <td>${user.nickname}</td>
               </tr>
                <tr>
                  <td>나이</td>
                  <td>${user.age}</td>
               </tr>
               <tr>
                  <td>키</td>
                  <td>${user.height}</td>
               </tr> 
               <tr>
                  <td>체형</td>
                  <td>${user.body}
                  <a href="#" class="square_btn" id="tag2" onclick="btn_ck('tag2','to2')">
                        <i class="fa fa-chevron-right"></i>
                  </a>
                  </td>
               </tr> 
               <tr id="to2" class="btn" style="display:none";> 
                  <td>
                     <div class="inputy-item" id="d1">
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-15" name="body"
                              value="마른"> <label for="FORM_LOGIN-gender-15"
                              style="position: relative; width: 50%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              마른 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-16" name="body"
                              value="슬림탄탄"> <label for="FORM_LOGIN-gender-16"
                              style="position: relative; width: 50%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              슬림탄탄 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-17" name="body"
                              value="보통"> <label for="FORM_LOGIN-gender-17"
                              style="position: relative; width: 50%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              보통 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-18" name="body"
                              value="글래머"> <label for="FORM_LOGIN-gender-18"
                              style="position: relative; width: 50%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              글래머 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-19" name="body"
                              value="근육질"> <label for="FORM_LOGIN-gender-19"
                              style="position: relative; width: 50%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              근육질 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-20" name="body"
                              value="통통한"> <label for="FORM_LOGIN-gender-20"
                              style="position: relative; width: 50%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              통통한 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-21" name="body"
                              value="뚱뚱한"> <label for="FORM_LOGIN-gender-21"
                              style="position: relative; width: 50%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              뚱뚱한 </label>
                        </div>
                     </div>
                  </td>
                  <td><input type="submit" value="수정"></td> 
               </tr> 
               <tr>
                  <td>거주지</td>
                  <td>${user.address}
                  <a href="#" class="square_btn" id="tag3" onclick="btn_ck('tag3','to3')"> 
                        <i class="fa fa-chevron-right"></i>
                  </a>
                  </td>
               </tr>
               <tr id="to3" class="btn" style="display:none";> 
                  <td>
                     <div class="inputy-item" id="d1">
                        <div>
                           <h5>한국</h5>
                        </div>
                        <br>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-22" name="address"
                              value="서울"> <label for="FORM_LOGIN-gender-22"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              서울 </label> <input type="radio" id="FORM_LOGIN-gender-59"
                              name="address" value="경기"> <label
                              for="FORM_LOGIN-gender-59"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              경기 </label> <input type="radio" id="FORM_LOGIN-gender-60"
                              name="address" value="인천"> <label
                              for="FORM_LOGIN-gender-60"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              인천 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-23" name="address"
                              value="대전"> <label for="FORM_LOGIN-gender-23"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              대전 </label> <input type="radio" id="FORM_LOGIN-gender-24"
                              name="address" value="충북"> <label
                              for="FORM_LOGIN-gender-24"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              충북 </label> <input type="radio" id="FORM_LOGIN-gender-25"
                              name="address" value="충남"> <label
                              for="FORM_LOGIN-gender-25"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              충남 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-26" name="address"
                              value="강원"> <label for="FORM_LOGIN-gender-26"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              강원 </label> <input type="radio" id="FORM_LOGIN-gender-27"
                              name="address" value="부산"> <label
                              for="FORM_LOGIN-gender-27"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              부산 </label> <input type="radio" id="FORM_LOGIN-gender-28"
                              name="address" value="경북"> <label
                              for="FORM_LOGIN-gender-28"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              경북 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-29" name="address"
                              value="경남"> <label for="FORM_LOGIN-gender-29"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              경남 </label> <input type="radio" id="FORM_LOGIN-gender-30"
                              name="address" value="대구"> <label
                              for="FORM_LOGIN-gender-30"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              대구 </label> <input type="radio" id="FORM_LOGIN-gender-31"
                              name="address" value="울산"> <label
                              for="FORM_LOGIN-gender-31"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              울산 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-32" name="address"
                              value="광주"> <label for="FORM_LOGIN-gender-32"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              광주 </label> <input type="radio" id="FORM_LOGIN-gender-33"
                              name="address" value="전북"> <label
                              for="FORM_LOGIN-gender-33"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              전북 </label> <input type="radio" id="FORM_LOGIN-gender-34"
                              name="address" value="전남"> <label
                              for="FORM_LOGIN-gender-34"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              전남 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-35" name="address"
                              value="제주"> <label for="FORM_LOGIN-gender-35"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              제주 </label> <input type="radio" id="FORM_LOGIN-gender-36"
                              name="address" value="그외"> <label
                              for="FORM_LOGIN-gender-36"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              그 외 </label>
                        </div>
                        <br>
                        <div>
                           <h5>해외</h5>
                        </div>
                        <br>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-37" name="address"
                              value="미국"> <label for="FORM_LOGIN-gender-37"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              미국 </label> <input type="radio" id="FORM_LOGIN-gender-38"
                              name="address" value="일본"> <label
                              for="FORM_LOGIN-gender-38"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              일본 </label> <input type="radio" id="FORM_LOGIN-gender-39"
                              name="address" value="아시아"> <label
                              for="FORM_LOGIN-gender-39"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              아시아 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-40" name="address"
                              value="유럽"> <label for="FORM_LOGIN-gender-40"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              유럽 </label> <input type="radio" id="FORM_LOGIN-gender-41"
                              name="address" value="그외"> <label
                              for="FORM_LOGIN-gender-41"
                              style="position: relative; width: 30%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              그 외 </label>
                        </div>
                        <br>
                     </div>
                  </td>
                  <td><input type="submit" value="수정"></td> 
               </tr>
               <tr>
                  <td>연봉</td>
                  <td>${user.pay}
                  <a href="#" class="square_btn" id="tag4" onclick="btn_ck('tag4','to4')">
                        <i class="fa fa-chevron-right"></i>
                  </a>
                  </td>
               </tr>
               <tr  id="to4" class="btn" style="display:none";>
                   <td>
                        <div class="inputy-item" id="d1">
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-42" name="pay"
                              value="표시하지 않음"> <label for="FORM_LOGIN-gender-42"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              표시하지 않음 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-43" name="pay"
                              value="1000만원 미만"> <label for="FORM_LOGIN-gender-43"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              1000만원 미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-44" name="pay"
                              value="1000만원이상 2000만원미만"> <label
                              for="FORM_LOGIN-gender-44"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              1000만원이상 2000만원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-45" name="pay"
                              value="2000만원이상 3000만원미만"> <label
                              for="FORM_LOGIN-gender-45"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              2000만원이상 3000만원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-46" name="pay"
                              value="3000만원이상 4000만원미만"> <label
                              for="FORM_LOGIN-gender-46"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              3000만원이상 4000만원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-47" name="pay"
                              value="4000만원이상 5000만원미만"> <label
                              for="FORM_LOGIN-gender-47"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              4000만원이상 5000만원미만</label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-48" name="pay"
                              value="5000만원이상 6000만원미만"> <label
                              for="FORM_LOGIN-gender-48"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              5000만원이상 6000만원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-49" name="pay"
                              value="6000만원이상 7000만원미만"> <label
                              for="FORM_LOGIN-gender-49"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              6000만원이상 7000만원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-50" name="pay"
                              value="7000만원이상 8000만원미만"> <label
                              for="FORM_LOGIN-gender-50"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              7000만원이상 8000만원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-51" name="pay"
                              value="8000만원이상 9000만원미만"> <label
                              for="FORM_LOGIN-gender-51"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              8000만원이상 9000만원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-52" name="pay"
                              value="9000만원이상 1억원미만"> <label
                              for="FORM_LOGIN-gender-52"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              9000만원이상 1억원미만 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-53" name="pay"
                              value="1억원이상"> <label for="FORM_LOGIN-gender-53"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              1억원이상 </label>
                        </div>
                     </div>
                  </td>
                  <td><input type="submit" value="수정"></td> 
               </tr> 
               <tr>
                  <td>전화번호</td>
                  <td>${user.phone}
                  <a href="#" class="square_btn" id="tag5" onclick="btn_ck('tag5','to5')">
                        <i class="fa fa-chevron-right"></i>
                  </a>
                  </td>   
               </tr>
               <tr id="to5" class="btn" style="display:none";>
                        <td><input type="text" name="phone"></td>
                        <td><input type="submit" value="수정"></td>
                     </tr>
               <tr> 
                  <td>학력</td>
                  <td>${user.education}
                  <a href="#" class="square_btn" id="tag6" onclick="btn_ck('tag6','to6')">
                        <i class="fa fa-chevron-right"></i>
                  </a>
                  </td>
               </tr>
               <tr id="to6" class="btn" style="display:none";>
                  <td>
                     <div class="inputy-item" id="d1">
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-54" name="education"
                              value="고등학교 졸업"> <label for="FORM_LOGIN-gender-54"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              고등학교 졸업 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-55" name="education"
                              value="전문대 졸업"> <label for="FORM_LOGIN-gender-55"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              전문대 졸업 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-56" name="education"
                              value="대학교4년제 졸업"> <label for="FORM_LOGIN-gender-56"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              대학교4년제 졸업 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-57" name="education"
                              value="대학원 졸업"> <label for="FORM_LOGIN-gender-57"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              대학원 졸업 </label>
                        </div>
                        <div class="inputy-item">
                           <input type="radio" id="FORM_LOGIN-gender-58" name="education"
                              value="그 외"> <label for="FORM_LOGIN-gender-58"
                              style="position: relative; width: 90%; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-left: 16px; padding-right: 48px; box-sizing: border-box; font-weight: 700;">
                              그 외 </label>
                        </div> 
                     </div>
                  </td>
                  <td><input type="submit" value="수정"></td>
               </tr>
               <tr>
                  <td>생년월일</td>
                  <td><fmt:formatDate value="${user.birthday}"
                        pattern="yyyy-MM-dd" /></td>
               </tr>
               
               <tr>
                  <td>관심사</td>
                  <td>${user.interestname1} 
                  <a href="#" class="square_btn" id="tag8" onclick="btn_ck('tag8','to8')">
                        <i class="fa fa-chevron-right"></i>
                  </a>
                  </td> 
               </tr>
               <tr id="to8" class="btn" style="display:none";>
                        <td>${user.interestname2},
                            ${user.interestname3},
                            ${user.interestname4},
                            ${user.interestname5},
                            ${user.interestname6}</td>  
                     </tr>
               <tr>
                  <td>내가 가진 좋아요</td> 
                  <td>${user.goodcnt}</td>
                  <td>
                     <button type="button" onclick="location.href='cash.shop?id=${user.id}'" class="buttonout">구매하기</button>
                     </td>
               </tr> 
            </table>
         </form>
      </div>    
   </div>
   <br> 
   <style>
.wrap {
   height: 100%;
   display: flex;
   align-items: center;
   justify-content: center;
}

.buttonout {  
   width: 140px;
   height: 40px;
   font-family: 'Poor Story', cursive;
   text-transform: uppercase;
   letter-spacing: 2.5px;
   font-weight: bold;
   color: #000;
   background-color: #fff;
   border: none;
   border-radius: 45px;
   box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
   transition: all 0.3s ease 0s;
   cursor: pointer;
   outline: none;
}

.buttonout:hover {
   background-color: #2EE59D;
   box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
   color: #fff;
   transform: translateY(-7px);
}
 #o1{
   margin-right: 5%;
 } 
 #o2{
   margin-right: 5%;
 }
 #o3{
   margin-right: 5%; 
 }
 #o4{
   width: 50px;
   margin-right: 5%; 
 }
 #o5{
   width: 50px;
   margin-right: 5%; 
 }
</style>

  <div class="wrap" style="float: right;" > 
     <c:if test="${user.id == 'admin'}">
  <button class="buttonout" id="o3" onclick="location.href='../admin/list.shop'">회원목록</button>
      </c:if> 
  <button class="buttonout" id="o1" onclick="location.href='buy.shop?id=${user.id}'">구매내역</button>
  <button type="button" class="buttonout" id="o2" onclick="pass_ch()">비밀번호변경</button>      
  <button class="buttonout" id="o3" onclick="delete_ck()">회원탈퇴</button>
  </div> 
          
 <script type="text/javascript">
   $(document).ready(function(){     
   $(".btn").each(function(){
       $(".btn").hide();
      })
    })  
      function btn_ck(to,id) {
   $("#"+id).toggle();
   }  
   
   function pass_ch() { 
      var op = "width=500, height=500, left=50, top=150";
      open("password.shop","",op);
   }
   
   function delete_ck(){
      var op = "width=500, height=500, left=50, top=150";
      open("delete.shop","",op); 
   }     
</script>
   </div><br>
</body>
</html>