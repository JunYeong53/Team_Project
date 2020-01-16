<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	img = opener.document.getElementById("pic");
	img.src = "img/${picture.pictureurl}"
	opener.document.f.profileurl1.value="${picture.pictureurl}"
	self.close();
</script>