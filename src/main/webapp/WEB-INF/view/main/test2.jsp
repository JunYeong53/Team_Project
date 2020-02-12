<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>PINGLE</title>

<link href="../testcss2/css/common.css" rel="stylesheet" type="text/css">
<link href="../testcss2/css/selflove.css" rel="stylesheet" type="text/css">
<link href="../testcss2/css/sub_laylout.css" rel="stylesheet" type="text/css">


<script type="text/javascript" src="../testcss2/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../testcss2/js/include_ex_script.js"></script>


<script type="text/javascript">
   var main_step = 0;
   var array_answer = "";
   var array_question = [ "나는 걱정을 많이 하지 않는다.", "나는 남을 돕는 것을 좋아한다.",
         "나는 모든 일을 계획을 세워서 한다.", "나는 기발한 아이디어들을 많이 가지고 있다.",
         "나는 사람을 편하게 한다.", "나는 물건을 쓰고 난 후 제자리에 갖다 놓는<br />것을 자주 잊는다.",
         "나는 말수가 적다.", "나는 어렵더라도 도전적인 것들을 읽는 것을<br />좋아한다.",
         "나는 웬만해서는 짜증내지 않는다.", "나는 다른 사람에게 쉽게 다가가지 못한다.", "나는 마음이 따뜻하다.",
         "나는 어차피 해야 하는 귀찮은 일들을<br />미루지 않고 바로 해 치운다.",
         "나는 대화를 먼저 시작하는 편이다.", "나는 어떤 일을 늘 새로운 방법으로<br />해보기를 좋아한다.",
         "내 생각대로 일이 풀리지 않으면 실망감을 그대로 표현한다.", "나는 스트레스를 잘 받는다." ];

   function change_answer_state(obj) {
      var now_index;

      now_index = $("#SLForm").find(":radio[name='answer']").index(obj);

      if (array_answer != "") {
         array_answer = array_answer
               + ","
               + $("#SLForm").find(":radio[name='answer']").eq(now_index)
                     .val();
      } else {
         array_answer = $("#SLForm").find(":radio[name='answer']").eq(
               now_index).val();
      }

      $(".answer").eq(0).removeClass("on");
      $(".answer").eq(1).removeClass("on");
      $(".answer").eq(2).removeClass("on");
      $(".answer").eq(3).removeClass("on");

      if (now_index == 0) {
         $(".answer").eq(0).addClass("on");
         $(".answer").eq(1).removeClass("on");
         $(".answer").eq(2).removeClass("on");
         $(".answer").eq(3).removeClass("on");

         $("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
               true);
         $("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
               false);
      } else if (now_index == 1) {
         $(".answer").eq(0).removeClass("on");
         $(".answer").eq(1).addClass("on");
         $(".answer").eq(2).removeClass("on");
         $(".answer").eq(3).removeClass("on");

         $("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
               true);
         $("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
               false);
      } else if (now_index == 2) {
         $(".answer").eq(0).removeClass("on");
         $(".answer").eq(1).removeClass("on");
         $(".answer").eq(2).addClass("on");
         $(".answer").eq(3).removeClass("on");

         $("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
               true);
         $("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
               false);
      } else if (now_index == 3) {
         $(".answer").eq(0).removeClass("on");
         $(".answer").eq(1).removeClass("on");
         $(".answer").eq(2).removeClass("on");
         $(".answer").eq(3).addClass("on");

         $("#SLForm").find(":radio[name='answer']").eq(0).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(1).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(2).prop("checked",
               false);
         $("#SLForm").find(":radio[name='answer']").eq(3).prop("checked",
               true);
      }

      setTimeout("change_question()", 500);
   }

   function change_question() {
      main_step = main_step + 1;

      if (main_step == 16) {
         //alert(array_answer);

         document.trForm.answer.value = array_answer;
         document.trForm.submit();
         return;
      }

      $(".question_text").html(
            (main_step + 1) + ". " + array_question[main_step]);

      if (main_step > 8) {
         $(".count_text").html("[ " + ((16 - main_step)) + "문항 남았습니다 ]");
      }

      $(".answer").eq(0).removeClass("on");
      $(".answer").eq(1).removeClass("on");
      $(".answer").eq(2).removeClass("on");
      $(".answer").eq(3).removeClass("on");

      $("#SLForm").find(":radio[name='answer']").eq(0).prop("checked", false);
      $("#SLForm").find(":radio[name='answer']").eq(1).prop("checked", false);
      $("#SLForm").find(":radio[name='answer']").eq(2).prop("checked", false);
      $("#SLForm").find(":radio[name='answer']").eq(3).prop("checked", false);
   }

   $(document).ready(function() {
      var toggled = true;
      $("img").on('click', function() {
         $(this).attr("src", "/html/love_test/self_love/img/btn_02.png");
         setTimeout(function() {
            $("#step_area").animate({
               "marginTop" : "-=723px"
            }, 300);
         }, 500);
      });

      $(".main_bg").fadeIn(800, function() {
         $("#flip").slideDown(300, function() {
            $(".second").show();
         });
      });
   });
</script>


<script
   src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/4445655678/?random=1580794638527&amp;cv=9&amp;fst=1580794638527&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=6&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2wg1m0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.duo.co.kr%2Fhtml%2Flove_test%2Fself_love%2Fself_love_main.asp%3Fu_div%3D&amp;ref=https%3A%2F%2Fwww.duo.co.kr%2Fhtml%2Flove_test%2Fmain.asp&amp;tiba=%EB%93%80%EC%98%A4-%ED%95%9C%EA%B5%AD%EB%8C%80%ED%91%9C%EA%B2%B0%ED%98%BC%EC%A0%95%EB%B3%B4%ED%9A%8C%EC%82%AC&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
</head>


 
</head>    
<body> 
<div id="selflove" style="height:723px;overflow:hidden;">
      <form name="trForm" method="post" action="self_love_result.shop">
         <input type="hidden" name="answer" value="">  
         <input type="hidden" name="u_div" value="">  
      </form>
      <div id="step_area" style="margin-top: -723px;">
         <div class="first main_bg" style="height: 723px;">
            <div class="temp">
               <h1>당신은 얼마나 연애를 위한 준비가 되어 있나요? 연애적성검사</h1>
               <div>듀오휴먼라이프연구소에서 오랜 연구와 체계적인 분석을 통해 개발한<br>연애적성검사로 당신이 얼마나 연애을 위한 준비가 되어 있는지<br>무료로 진단해 드립니다.</div>
               <a id="flip" style="cursor: pointer;"><img src="/html/love_test/self_love/img/btn_02.png"></a>
            </div>
         </div>

         <div class="second" style="height: 723px;">
         <form name="SLForm" id="SLForm" method="post" class="temp">
            <input type="hidden" name="array_answer" value="">

            <h1>당신은 얼마나 연애를 위한 준비가 되어 있나요? 연애적성검사</h1>         
            <div class="q">
            <div class="middle question_text">      
            <!--
            1. 나는 걱정을 많이 하지 않는다.
            2. 나는 남을 돕는 것을 좋아한다.
            3. 나는 모든 일을 계획을 세워서 한다.
            4. 나는 기발한 아이디어들을 많이 가지고 있다.
            5. 나는 사람을 편하게 한다.
            6. 나는 물건을 쓰고 난 후 제자리에 갖다 놓는<br />것을 자주 잊는다.
            7. 나는 말수가 적다.
            8. 나는 어렵더라도 도전적인 것들을 읽는 것을<br />좋아한다.
            9. 나는 웬만해서는 짜증내지 않는다.
            10. 나는 다른 사람에게 쉽게 다가가지 못한다.
            11. 나는 마음이 따뜻하다.
            12. 나는 어차피 해야 하는 귀찮은 일들을<br />미루지 않고 바로 해 치운다.
            13. 나는 대화를 먼저 시작하는 편이다.
            14. 나는 어떤 일을 늘 새로운 방법으로<br />해보기를 좋아한다.
            15. 내 생각대로 일이 풀리지 않으면 실망감을 그대로 표현한다.
            16. 나는 스트레스를 잘 받는다.
            -->
            1. 나는 걱정을 많이 하지 않는다.
            </div>
            </div>
            <div class="a">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                     <td width="11" height="89"></td>
                     <td width="89">
                        <label class="answer">
                           <input type="radio" name="answer" value="1" onclick="change_answer_state(this);">
                        </label>
                     </td>
                     <td width="11"></td>
                     <td width="11"></td>
                     <td width="89">
                        <label class="answer"> 
                           <input type="radio" name="answer" value="3" onclick="change_answer_state(this);">
                        </label>
                     </td>
                     <td width="11"></td>
                     <td width="11"></td>
                     <td width="89">
                        <label class="answer">
                           <input type="radio" name="answer" value="5" onclick="change_answer_state(this);">
                        </label>
                     </td>
                     <td width="11"></td>
                     <td width="11"></td>
                     <td width="89">
                        <label class="answer">
                           <input type="radio" name="answer" value="7" onclick="change_answer_state(this);">
                        </label>
                     </td>
                     <td width="11"></td>
                     <!--
                     <td width="11"></td>
                     <td width="89">
                        <label class="answer">
                           <input type="radio" name="answer" value="5" onclick="change_answer_state(this);" />
                        </label>
                     </td>
                     <td width="11"></td-->
                  </tr>
               </tbody></table>
            </div>
            <div class="state">  
               <div>그렇지않다</div>
               <img src="../testcss2/img/self_01.png">
               <div>보통이다</div>
               <img src="../testcss2/img/self_02.png">
               <div>매우그렇다</div>
            </div>   
            <div class="remain count_text"></div>
         </form>
         </div> 
      </div>
   </div>
</body>
</html>