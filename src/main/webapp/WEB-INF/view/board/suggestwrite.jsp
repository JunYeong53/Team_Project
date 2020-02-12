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
<script type="text/javascript">
function submitcheck(){      
      if(f.boardsubject.value == ""){
         alert("제목을 입력해주세요!")
         return false;
      }      
      return true;
   }
</script>
</head>
<body>

<div>
   <form action="suggestwrite2.shop" method="post" onsubmit="return submitcheck()" name="f">
   <input type="hidden" name=boardid value="${loginUser.id}">
   <div class="screen_con">
      <div class="info_root">
         <div>
            <h1 style="color: #575757; font-weight: 700; font-size: 2.0rem;">
               건의 작성
            </h1>
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
                ${nickname}
            </div>
         </div>
         <div class="spacer"></div>
         <div style="display: flex;">
            <div class="con_l">
               내용
            </div>
            <div class="con_r" style="padding: 1px;">
               <textarea rows="5" cols="5" name="boardcontent" id="boardcontent"></textarea>
               <script> CKEDITOR.replace('boardcontent', { height: 300 }); </script>
            </div>
         </div>
         <div class="spacer"></div>
         <div style="width: 100%; text-align: center;">
            <button class="but" type="submit">작성하기</button>
         </div>
      </div>
   </div>
   </form>
</div>

</body>
</html>