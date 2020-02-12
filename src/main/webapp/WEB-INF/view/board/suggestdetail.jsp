<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
   .screen_con{
         box-sizing: border-box;
         padding: 40px;
   }
   .info_root{
         margin: 0 auto;
         max-width: 600px;
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
   .modal_hr{
         padding: 5px 0;
        text-align: center;
   }
   .body_inner{
         padding: 20px;
   }
</style>
</head>
<body>

<div class="screen_con">
   <div class="info_root">
      <div>
         <h1 style="color: #575757; font-weight: 700; font-size: 2.0rem;">건의 내용</h1>
      </div>
      <div class="flex_con">
         <div class="flex_item">
            <div style="padding-left: 0px; padding-right: 0px;">
               <div class="flex_item_con">
                  <div class="band">
                     <div class="band_subject">
                        ${board.boardsubject}
                     </div>
                     <div>
                        <div class="band_time">
                           ${board.id}
                        </div>
                        <div class="band_time">
                           <fmt:formatDate value="${board.boarduptime}" pattern="yyyy-MM-dd" />
                        </div>
                     </div>
                  </div>
                  <div class="modal_hr">
                           <hr style="margin: 0;">
                         </div>
                         <div class="body_inner">
                            ${board.boardcontent}
                         </div>
                         <div class="modal_hr">
                           <hr style="margin: 0;">
                         </div>
                         <div class="body_inner" style="text-align: center; font-weight: 700;">
                            관리자 답글
                         </div>
                         <div class="modal_hr">
                           <hr style="margin: 0;">
                         </div>
                         <c:if test="${empty comment.commenttext}">
                            <div style="text-align: center;">
                               <img width="400" height="400" src="https://static-kr-pairs.akamaized.net/public/images/app/content/empty/general.svg">
                               <div>
                                  해당 게시물에 아직 답글이 없어요
                               </div>
                            </div>
                         </c:if>
                         <c:if test="${!empty comment.commenttext}">
                            <div class="body_inner">
                               ${comment.commenttext}
                            </div>
                         </c:if>
                         <c:if test="${loginUser.id=='admin'}">
                            <div class="modal_hr" style="padding: 0;">
                              <hr style="margin: 0;">
                            </div>
                            <div class="body_inner">
                               <form method="post" action="commentwrite.shop" onsubmit="submitcheck()" name="f">
                                  <input type="hidden" value="${board.boardnum}" name="boardnum">
                                  <div>
                                     <textarea rows="" cols="" name="commenttext"></textarea>
                                     <script> CKEDITOR.replace('commenttext', { height: 150 }); </script>
                                  </div>
                                  <div style="margin-top: 10px; text-align: right;">
                                     <input type="submit" value="댓글작성">
                                  </div>
                               </form>
                            </div>
                         </c:if>
                         <div class="modal_hr">
                           <hr style="margin: 0;">
                         </div>
                         <div class="body_inner" style="text-align: center;">
                            <button onclick="location.href='notice.shop'" type="button" style="width: 95%; background: #00c1bf; color: white;">
                               목록
                            </button> 
                         </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</body>
</html>