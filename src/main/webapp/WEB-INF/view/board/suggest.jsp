<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건의사항</title>
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
<script>
   function listdo(page){
      document.page.pageNum.value=page;
      document.page.submit();
   }
</script>
</head>
<body>

<div id="divreview">
   <div class="screen_con">
      <div class="info_root">
         <form action="suggest.shop" method="post" name="page">
         <input type="hidden" name="pageNum" value="1">
         <div>
            <h1 style="color: #575757; font-weight: 700; font-size: 2.8rem; margin-bottom: 0;">
               건의사항
            </h1>
         </div>
         <div>
           
         </div>
         <div class="spacer"></div>
         <div>
            <div class="flex_con">
               <c:forEach items="${suboardlist}" var="list" varStatus="stat">
                  <div class="flex_item">
                     <div style="padding-right: 0px; padding-left: 0px;">
                        <div class="con">
                        <a href="suggestdetail.shop?boardnum=${list.boardnum}">
                           <div class="band">
                              <div class="subject">
                                 ${list.boardsubject}
                              </div>
                              <div style="font-size: 1.2rem;">
                                 <div>
                                    <fmt:formatDate value="${list.boarduptime}" pattern="yyyy-MM-dd" />
                                     <c:if test="${list.accept == 0}">
                                 <i class="fas fa-hourglass"></i>
                              </c:if>
                           <c:if test="${list.accept == 1}">
                              <i class="fas fa-check"></i>
                           </c:if>
                                 </div>
                                 <div>
                                    ${list.id}
                                 </div>
                              </div>
                           </div></a>
                           
                        </div>
                     </div>
                  </div>
               </c:forEach>
            </div>
         </div>
         <div class="spacer"></div>
         <div style="width: 100%; text-align: center;">
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
              
         </div>
         </form>
      </div>
   </div>
</div>
</body>
</html>