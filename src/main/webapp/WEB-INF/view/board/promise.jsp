<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 보낸 약속</title>
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
      width: 70%;
      padding-top: 8px;
      padding-bottom: 8px;
      cursor: pointer;
      margin:auto;
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
</style>
</head>
<body>
<br>
<h1 style="padding:30px; color: #575757; font-size: 2.2rem; font-weight: 700;">내가 보낸 약속</h1>
<div id="reifo" class="info flex_con">
         <c:forEach items="${prolist}" var="list" varStatus="stat">
            <div class="flex_item">
               <div style="padding-left: 0px; padding-right: 0px;">
                  <div class="flex_item_con">
                     <div class="band" onclick="location.href='promisedetail.shop?promisenum=${list.promisenum}'">
                        <div class="band_subject">
                          ${list.promisesubject}
                        </div>
                        <div class="band_fnt">
                           ${list.goodid}
                        </div>
                        <div class="band_time">
                           <fmt:formatDate value="${list.promiseday}" pattern="MM월dd일 HH:mm" />분
                           
                           <c:if test="${list.accept == 0}">
                              <i class="fas fa-hourglass"></i>
                           </c:if>
                           <c:if test="${list.accept == 1}">
                              <i class="fas fa-check"></i>
                           </c:if>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </c:forEach>
      </div>
</body>
</html>