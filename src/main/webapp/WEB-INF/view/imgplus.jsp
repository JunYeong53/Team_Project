<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath}" />    
<script>
	<c:if test="${!empty picture.pictureurl}">
		img = opener.document.getElementById("mainimg");
		img.src = "${path}/login/img/${picture.pictureurl}"
		opener.document.img_f.profileurl1.value="${picture.pictureurl}"
		if(opener.document.img_f.check.value == 1){
			 opener.document.img_f.check.value="5"
		}
		else if(opener.document.img_f.check.value == 2){
			 opener.document.img_f.check.value="6"
		}
		else if(opener.document.img_f.check.value == 3){
			 opener.document.img_f.check.value="7"
		}
		else{ 		  
			opener.document.img_f.check.value="4"
		}
		self.close();  
	</c:if>
	<c:if test="${!empty picture.pictureurl2}">
	   img = opener.document.getElementById("imgplus");
 	  img.src = "${path}/login/img/${picture.pictureurl2}"
 	  opener.document.img_f.profileurl2.value="${picture.pictureurl2}"
 	  if(opener.document.img_f.check.value == 2){
 		 opener.document.img_f.check.value="3"
 	  }
 	  else if(opener.document.img_f.check.value == 4){
 		 opener.document.img_f.check.value="5"
 	  }
 	 else if(opener.document.img_f.check.value == 6){
 		 opener.document.img_f.check.value="7"
 	  }
 	  else{ 		  
 	  	opener.document.img_f.check.value="1"
 	  }
 	  self.close();  
   </c:if>
   <c:if test="${!empty picture.pictureurl3}">
 	  img = opener.document.getElementById("imgplus2");
	  img.src = "${path}/login/img/${picture.pictureurl3}"
	  opener.document.img_f.profileurl3.value="${picture.pictureurl3}"
	  if(opener.document.img_f.check.value == 1){
		  opener.document.img_f.check.value="3"
	  }
	  else if(opener.document.img_f.check.value == 4){
		  opener.document.img_f.check.value="6"
	  }
	  else if(opener.document.img_f.check.value == 5){
		  opener.document.img_f.check.value="7"
	  }
	  else{
		  opener.document.img_f.check.value="2"
	  }
	  self.close();  
</c:if>
</script>