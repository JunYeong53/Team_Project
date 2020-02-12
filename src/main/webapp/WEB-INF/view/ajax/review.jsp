<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기</title>
<script>
$(function() {
   $(".saleLine").each(function() {
         $(this).hide();
      })
   
   $("#review").change(function() {
      var v = page.review.value;
      var pageNum = page.pageNum.value; 
      $.ajax({
         type : "POST",
         url : "../ajax/review.shop",
         data : {
            "review" : v,
            "pageNum" : pageNum
         },
         success : function(data) { 
            $("#divreview").html(data)
            $("#review > option[value="+v+"]").attr('selected','selected');
         }       
      })   
   })
})
   function listdo(ajaxpage) {      
      var v = page.review.value;
       $.ajax({
         type : "POST",
         url : "../ajax/review.shop",
         data : {
            "pageNum" : ajaxpage,
            "review" : v            
         },
         success : function(data) {            
            $("#divreview").html(data)
            $("#review > option[value="+v+"]").attr('selected','selected');
         }       
      })     
   }
   
function list_disp(id) {
      $("#"+id).toggle(); 
      }

</script>

<style>
   th {   
      background: whitesmoke;
    }
    .screen_con{
       box-sizing: border-box;
       padding: 40px;
    }
    .info_root{
       margin: 0 20%;
    }
    .info_select{
       display: flex;
       justify-content: center;
    }
    .select_con{
       cursor: pointer;
       position: relative;
       box-sizing: border-box;
       width: 50%;
    }
    .spacer{
       height: 16px;
       width: 100%;
    }
    .flex_con{
       display: flex;
       flex-flow: row wrap;
       justify-content: space-between;
       align-items: flex-start;
    }
    .flex_item{
       width: 100%;
       padding-top: 8px;
       padding-bottom: 8px;
    }
    .con{
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
    .subject{
       font-size: 1.8rem;
       font-weight: 700;
    }
    .body_inner{
         padding: 20px;
    }
    .but{
       box-shadow: 0 2px 8px 0 rgba(82,213,221,.5);
       border-color: #35d9d7;
       background: #35d9d7;
       color: #fff;
       border-radius: 100px;
       line-height: 2;
       box-sizing: border-box;
       padding: 8px 16px;
       font-size: 0.8rem;
       display: inline-flex;
       justify-content: center;
       align-items: center;
       vertical-align: middle;
        margin: 4px;
        cursor: pointer;
        width: 120px;
    }
</style>
</head>
<body>

<div id="divreview">
   <div class="screen_con">
      <div class="info_root">
         <form action="review.shop" method="post" name="page">
         <input type="hidden" name="pageNum" value="1">
         <div>
            <h1 style="color: #575757; font-weight: 700; font-size: 2.8rem; margin-bottom: 0;">
               후기
            </h1>
         </div>
         <div>
            <div class="info_select">
               <div class="select_con">
                  <select name="review" id="review" style="color: #35d9d7; border: 3px solid #35d9d7; border-radius: 100px; width: 100%; padding-left: 5%;">
                        <option value="3">홈페이지 후기</option>
                       <option value="4">만남 후기</option>
                       <option value="5">채팅 후기</option>
                  </select>
               </div>
            </div>
         </div>
         <div class="spacer"></div>
         <div>
            <div class="flex_con">
               <c:forEach items="${reboardlist}" var="list" varStatus="stat">
                  <div class="flex_item">
                     <div style="padding-right: 0px; padding-left: 0px;">
                        <div class="con">
                           <div class="band" onclick="javascript:list_disp('saleLine${stat.index}')">
                              <div class="subject">
                                 ${list.boardsubject}
                              </div>
                              <div style="font-size: 1.2rem;">
                                 <div>
                                    <fmt:formatDate value="${list.boarduptime}" pattern="yyyy-MM-dd" />
                                 </div>
                                 <div>
                                    ${list.id}
                                 </div>
                              </div>
                           </div>
                           <div id="saleLine${stat.index}" class="saleLine">
                              <div class="body_inner">
                                 ${list.boardcontent}
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </c:forEach>
            </div>
         </div>
         <div class="spacer"></div>
         <div style="width: 100%; text-align: center; padding-left: 15%;">
            <c:if test="${pageNum > 1}"><a href="javascript:listdo(${pageNum - 1})">
               <i class="fas fa-caret-square-left" style="font-size: 1.6rem"></i>
            </a></c:if>
            <c:if test="${pageNum <=1}">
               <i class="fas fa-caret-square-left" style="font-size: 1.6rem"></i>
            </c:if>
            &nbsp;&nbsp;
                <c:if test="${pageNum < maxpage}"><a href="javascript:listdo(${pageNum + 1})">
                   <i class="fas fa-caret-square-right" style="font-size: 1.6rem"></i>
                </a></c:if>
              <c:if test="${pageNum >= maxpage}">
                 <i class="fas fa-caret-square-right" style="font-size: 1.6rem"></i>
              </c:if>
              <div style="float: right;">
                 <button class="but" onclick="javascript:location.href='reviewwrite.shop'" type="button">
                       글쓰기
                    <i class="fas fa-pencil-alt"></i>
                 </button>
              </div>
         </div>
         </form>
      </div>
   </div>
</div>
</body>
</html>