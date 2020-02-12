<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/jspHeader.jsp"  %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function() {
   $("#oinfo").show(); 
   $("#minfo").hide();
   $("#reifo").hide(); 
   $("#tab1").addClass("select");
   $(".saleLine").each(function() {
      $(this).hide();
   })
})
   function disp_div(id,tab) {  
      $(".info").each(function() {
      $(this).hide();
      })
      $("#tab1").removeClass("select");
      $("#tab2").removeClass("select");
      $("#tab3").removeClass("select")
      $("#"+id).show();
      $("#"+tab).addClass("select");
   }
   function list_disp(id) {
   $("#"+id).toggle(); 
   }
</script>
<style type="text/css">
   .select {      
      background-color: #00c1bf;
      color:white;      
   }
   th {   
      background: whitesmoke;
      }
   .screen_con{
      box-sizing: border-box;
      padding: 40px;
   }
   .info_root{
      margin: 0 auto;
      max-width: 600px;
      display: flex;
    justify-content: center;
   }
   .spacer_h{
      height: 16px;
      width: 100%;
   }
   .flex_con{
      display: flex;
      flex-wrap: wrap;
      flex-flow: row wrap;
      align-items: flex-start;
   }
   .flex_item{
      width: 100%;
      padding-top: 8px;
      padding-bottom: 8px;
      cursor: pointer;
   }
   .flex_item_con{
      border: 1px solid #d8d7dc;
      border-radius: 10px;
   }
   .band{
      position: relative;
      padding: 20px;
      padding-right: 50px;
      display: flex;
      justify-content: space-between;
      align-items: center;
   }
   .band_subject{
      font-size: 1.8rem;
      font-weight: 700;
   }
   .band_time{
      font-size: 1.2rem;
   }
   .body_inner{
      padding: 20px;
   }
   
   
   
   /* DivTable.com */
.divrow {
   display: table-row;
}
.divcall { 
   display: table-cell;
   padding: 3px 10px;
}

#bu{
    margin-top: 160px;
}  
#tt{
   padding-right: 20px;
}
   
   
</style> 
<meta charset="utf-8">
<title></title>
</head> 
<body>
   <div class="screen_con">
      <div class="info_root">
         <div class="btn-group" role="group" aria-label="Basic example"">
            <button type="button" class="btn btn-secondary tab" id="tab1" style="border-radius: 50px;"  
                  onclick="javascript:disp_div('oinfo','tab1')"><i class="far fa-calendar"></i>회원목록</button>
         </div>
      </div> 
      <div class="spacer_h"></div>
      <div id="oinfo" class="info container flex_con">
         <c:forEach items="${adlist}" var="user" varStatus="stat">
            <div class="flex_item"> 
               <div style="padding-left: 0px; padding-right: 0px;">
                 <form action="list.shop" method="post"> 
                  <div class="flex_item_con"> 
                     <div class="band" onclick="javascript:list_disp('saleLine${stat.index}')">
                        <div class="band_subject">
                           ${user.id} 
                        </div>  
                        <div class="band_time">
                           <i class="fas fa-angle-down"></i>
                        </div>
                     </div>
                     <div id="saleLine${stat.index}" class="saleLine">
                        <div class="body_inner">
                          <div class="row">
                         <div class="divrow col-3"> 
                            <div class="divcall">
                            <img src="${path}/login/img/${user.profileurl1}" width="70%" height="200px">
                            </div>    
                         </div>    
                         <div class="col-4">                         
                         <div class="divrow"> 
                            <div class="divcall">닉네임:</div>
                            <div class="divcall">${user.nickname}</div>
                          </div>                       
                         <div class="divrow">
                            <div class="divcall">성별:</div> 
                            <div class="divcall">${user.gender}</div>
                         </div>                       
                         <div class="divrow">
                            <div class="divcall">나이:</div>
                            <div class="divcall">${user.age}</div>
                         </div>                       
                         <div class="divrow">
                            <div class="divcall">연락처:</div>
                            <div class="divcall">${user.phone}</div>
                         </div>                       
                         <div class="divrow">
                             <div class="divcall">주소:</div>
                            <div class="divcall">${user.address}</div>
                         </div>  
                         </div>   
                     <div class="col-5" id="bu">
                         <a href="../user/delete.shop?id=${user.id}" id="tt">강제탈퇴</a>
                         <a href="../user/mypage.shop?id=${user.id}" id="tt">상세정보</a>                       
                            </div>                          
                        </div> 
                        </div> 
                     </div>
                  </div>
              </form>
               </div>
            </div>
         </c:forEach>
      </div>
   </div>
</body>
</html>