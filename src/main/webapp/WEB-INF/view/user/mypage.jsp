<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/jspHeader.jsp" %>
<%-- /WEB-INF/view/user/mypage.jsp --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>MyPage</title>
<script type="text/javascript">
   $(document).ready(function(){
      $("#minfo").show(); //회원정보는 보이도록
      //$("#oinfo").hide(); //주문내역은 안보이도록
      //$(".saleLine").each(function() { //주문상품 목록 숨김.
      //   $(this).hide();
      //})
      $("#tab1").addClass("select");
   })
   function disp_div(id,tab) {
      $(".info").each(function() {
         $(this).hide();
      })
      $(".tab").each(function() {
         $(this).removeClass("select");
      })
      $("#"+id).show(); //minfo,oinfo
      $("#"+tab).addClass("select");
   }
   function list_disp(id) {
      $("#"+id).toggle();
   }
</script>
<style type="text/css">
   .select {
      padding:3px;
      background-color: #0000ff;
   }
   .select>a { color : #ffffff;
            text-decoration : none;
            font-weight : bold;}
</style>
</head>
<body>
<table>
   <tr><td id="tab1" class="tab" width="50%">
   <a href="javascript:disp_div('minfo','tab1')">MY 프로필</a></td>
    </tr>
</table>

<%-- minfo : 회원 정보 출력 --%>
   <div id="minfo" class="info">
      <div class="row"> 
         <div class="col-3"> 
            <td id="my1">사진<img src="" width="150" height="200"></td>
         </div>
      <div class="col-9">   
       <table>
        <tr><td id="my2">인사말</td><td>${user.userid}</td></tr>
        <tr><td >닉네임</td><td>${user.username}</td></tr>
        <tr><td >나이</td><td>${user.postcode}</td></tr>
        <tr><td>키</td><td></td></tr>
         <tr><td>체형</td><td></td></tr>
         <tr><td>거주지</td><td></td></tr>
         <tr><td>학력</td><td></td></tr>
         <tr><td>연봉</td><td></td></tr>
         <tr><td>이메일</td><td>${user.email}</td></tr>
         <tr><td>생년월일</td><td><fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd" /></td></tr>
         <tr><td>관심사</td><td>${user.phoneno}</td></tr>      
         </table>
      </div>   
   </div>
   <br>
   <a href="update.shop">[회원정보수정]</a>&nbsp;
      <c:if test="${loginUser.userid != 'admin'}">
         <a href="delete.shop">[회원탈퇴]</a>&nbsp;
      </c:if>
      <!-- 관리자 페이지 -->
      <c:if test="${loginUser.userid == 'admin'}">
         <a href="../admin/list.shop">[회원목록]</a>&nbsp;
      </c:if>
   </div><br>
</body>
</html>