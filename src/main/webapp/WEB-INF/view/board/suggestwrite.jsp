<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<form action="suggestwrite.shop" method="post">
	<input type="hidden" name=boardid value="${user.id}">
	<table>
		<tr>
			<th width="20%" style="text-align: center;">제목</th>
			<td>
				<input type="text" name="boardsubject">
			</td>
		</tr>
		<tr>
			<th width="20%" style="text-align: center;">작성자</th>
			<td style="text-align: right;">
				유저 닉네임
			</td>
		</tr>
		<tr>
			<th width="20%" style="text-align: center;">내용</th>
			<td>
				<textarea rows="10" cols="7" name="boardcontent"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: right;">
				<input type="submit" value="작성">
			</td>
		</tr>
	</table>
</form>

</body>
</html>