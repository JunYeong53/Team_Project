<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		margin: 0 20%;
		border: 1px solid #d8d7dc;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,.3);
		border-radius: 50px;
		padding: 5%;
	}
	.con_l{
		width: 20%;
	}
	.con_r{
		width: 80%;
	}
	.spacer{
		height: 30px;
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
        width: 80%;
    }
</style>

</head>
<body>

<div>
	<form action="reviewwrite.shop" method="post">
	<div class="screen_con">
		<div class="info_root">
			<div>
				<h1 style="color: #575757; font-weight: 700; font-size: 2.0rem;">
					후기 작성
				</h1>
			</div>
			<div style="padding-left: 70%;">
				<select name="review" style="font-weight: 700; border: 1px solid #d8d7dc; border-radius: 8px; padding: 8px; padding-right: 0px; width:100%;">
          		  <option value="3">홈페이지 후기</option>
          		  <option value="4">만남 후기</option>
         		  <option value="5">채팅 후기</option>
   				 </select>
			</div>
			<div class="spacer"></div>
			<div style="display: flex;">
				<div class="con_l">
					제목
				</div>
				<div class="con_r">
					<input type="text" name="boardsubject">
				</div>
			</div>
			<div class="spacer"></div>
			<div style="display: flex;">
				<div class="con_l">
					작성자
				</div>
				<div class="con_r" style="text-align: center;">
					유저 닉네임
				</div>
			</div>
			<div class="spacer"></div>
			<div style="display: flex;">
				<div class="con_l">
					내용
				</div>
				<div class="con_r" style="padding: 1px;">
					<textarea rows="5" cols="5" name="boardcontent"></textarea>
					<script> CKEDITOR.replace('boardcontent', { height: 300 }); </script>
				</div>
			</div>
			<div class="spacer"></div>
			<div style="width: 100%; text-align: center;">
				<button class="but">작성하기</button>
			</div>
		</div>
	</div>
	</form>
</div>

</body>
</html>