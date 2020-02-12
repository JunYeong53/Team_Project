<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/view/jspHeader.jsp"  %>
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
</style>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<div class="screen_con">
		<div class="info_root">
			<div class="btn-group" role="group" aria-label="Basic example"">
				<button type="button" class="btn btn-secondary tab" id="tab1" style="border-radius: 50px;"  
      				onclick="javascript:disp_div('oinfo','tab1')"><i class="far fa-calendar"></i>공지 사항</button>
  				<button type="button" class="btn btn-secondary tab" id="tab2" style="border-radius: 50px;"
       				onclick="javascript:disp_div('minfo','tab2')"><i class="far fa-bell"></i>내 쪽지함</button>
       			<button type="button" class="btn btn-secondary tab" id="tab3" style="border-radius: 50px;"
      				 onclick="javascript:disp_div('reifo','tab3')"><i class="fas fa-book-open"></i>내 건의함</button>
			</div>
		</div>
		<div class="spacer_h"></div>
		<div id="oinfo" class="info container flex_con">
			<c:forEach items="${noboardlist}" var="list" varStatus="stat">
				<div class="flex_item">
					<div style="padding-left: 0px; padding-right: 0px;">
						<div class="flex_item_con">
							<div class="band" onclick="javascript:list_disp('saleLine${stat.index}')">
								<div class="band_subject">
									${list.boardsubject}
								</div>
								<div class="band_time">
									<fmt:formatDate value="${list.boarduptime}" pattern="yyyy-MM-dd" />
									&nbsp;
									<i class="fas fa-angle-down"></i>
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
		<div id="minfo" class="info flex_con" style="display:none;">
			<c:forEach items="${promiselist}" var="list" varStatus="stat">
				<div class="flex_item">
					<div style="padding-left: 0px; padding-right: 0px;">
						<div class="flex_item_con">
							<div class="band" onclick="location.href='promisedetail.shop?promisenum=${list.promisenum}'">
								<div class="band_subject">
									${list.promisesubject}
								</div>
								<div class="band_fnt">
									${list.id}
								</div>
								<div class="band_time">
									<fmt:formatDate value="${list.promiseday}" pattern="MM월dd일 HH:mm" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div id="reifo" class="info flex_con" style="display:none;">
			<c:forEach items="${mysuboardlist}" var="list" varStatus="stat">
				<div class="flex_item">
					<div style="padding-left: 0px; padding-right: 0px;">
						<div class="flex_item_con">
							<div class="band" onclick="location.href='suggestdetail.shop?boardnum=${list.boardnum}'">
								<div class="band_subject">
									${list.boardsubject}
								</div>
								<div class="band_time">
									<fmt:formatDate value="${list.boarduptime}" pattern="yyyy-MM-dd" />
									&nbsp;
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
	</div>
</body>
</html>