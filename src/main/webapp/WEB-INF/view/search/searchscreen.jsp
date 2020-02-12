<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
<!DOCTYPE html>
<html>
<head>

<title>검색</title>
<script type="text/javascript">
   function open_addr() {
        $('#result').empty();
       $('#result').show();
       $.ajax({
        type : "POST",
        url : "../search/addr.shop",
        data : {
           
        },
        success : function(data) {               
           $("#result").html(data)
        }
     })
   }
   
   function open_agehigh() {   
      $('#result').empty();
       $('#result').show();
       $.ajax({
        type : "POST",
        url : "../search/agehigh.shop",
        data : {
           
        },
        success : function(data) {               
           $("#result").html(data)
        }
     })
   }
   
   function open_agelow() {    
      $('#result').empty();
       $('#result').show();
       $.ajax({
        type : "POST",
        url : "../search/agelow.shop",
        data : {
           
        },
        success : function(data) {               
           $("#result").html(data)
        }
     })
   }
   
   function open_height() {    
      $('#result').empty();
       $('#result').show();
       $.ajax({
        type : "POST",
        url : "../search/height.shop",
        data : {
           
        },
        success : function(data) {               
           $("#result").html(data)
        }
     })
   }
   
   function open_body() {    
      $('#result').empty();
       $('#result').show();
       $.ajax({
        type : "POST",
        url : "../search/body.shop",
        data : {
           
        },
        success : function(data) {               
           $("#result").html(data)
        }
     })
   }
   
   function open_education() {   
      $('#result').empty();
       $('#result').show();
       $.ajax({
        type : "POST",
        url : "../search/education.shop",
        data : {
           
        },
        success : function(data) {               
           $("#result").html(data)
        }
     })
   }
   
   function open_pay() {      
      $('#result').empty();
       $('#result').show();
       $.ajax({
        type : "POST",
        url : "../search/pay.shop",
        data : {
           
        },
        success : function(data) {               
           $("#result").html(data)
        }
     })
   }
</script>

<script type="text/javascript">
   function addrselect() {
      var address = $('input:radio[name="address"]:checked').val();
      $('#address').val(address);
      $('#addr').text(address);
   }
   function agehighselect() {
      var agehigh = $('input:radio[name="agehigh"]:checked').val();
      if(agehigh == "상관없음") {
      $('#agehigh').val(99);
      $('#ageh').text(agehigh);
      } else {
         $('#agehigh').val(agehigh);
         $('#ageh').text(agehigh);
      }
   }
   function agelowselect() {
      var agelow = $('input:radio[name="agelow"]:checked').val();
      if(agelow == "상관없음") {
      $('#agelow').val(1);
      $('#agel').text(agelow);
      } else {
         $('#agelow').val(agelow);
         $('#agel').text(agelow);
      }
   }
   function heightselect() {
      var height = $('input:radio[name="height"]:checked').val();
      $('#height').val(height);
      $('#heightdiv').text(height);
   }
   function bodyselect() {
      var body = $('input:radio[name="body"]:checked').val();
      $('#body').val(body);
      $('#bodydiv').text(body);
   }
   function educationselect() {
      var education = $('input:radio[name="education"]:checked').val();
      $('#education').val(education);
      $('#edu').text(education);
   }
   function payselect() {
      var pay = $('input:radio[name="pay"]:checked').val();
      $('#pay').val(pay);
      $('#paydiv').text(pay);
   }
</script>

<style>
.modal_item {
   border: 1px solid;
   height: 50px; width: 270px;
   border-radius: 10px;
   padding: 10px;
   margin: 5px;
   opacity: 0.7;
}
.box1 {
   box-sizing: border-box;
   display:flex;
   margin: 0px auto;
   max-width: 1000px;
   height: 100%;
   border: 1px solid #888;     
   border-radius: 16px;
}

.box-l, .box-r {
   display: inline-block;
}
.box-l {
   text-align: left;
}
.box-r {
   color: #00c1bf;
}
.box-rr {
   color: #BDBDBD;
}
.modal_item:hover {background-color:#D8D8D8; }

.box-r, .box-rr {
   float: right;
}
.box-left {
  background: white;
  float: left;
  width: 30%;
  height: 80%;
}
.box-right {
  background: white;
  float: right;
  width: 70%;
  height: 80%; 
}
.box-bottom {
   position: relative;
   width: 100%;
   height: 20%;
   right: -950px;
}

</style>

</head>
<body>
    <c:set var="path" value="${pageContext.request.contextPath}" />
    <br>
   <h1 style="color: #575757; font-size: 2.2rem; font-weight: 700;">어떤 사람을 찾고 있나요?</h1>
    <br>
   <form action="../user/usersearch.shop" name="searchscreen" method="POST">
   <div class="box1">
   
   <input type="hidden" value="2" name="filtercheck">
   <input type="hidden" id="address" name="address">
   <input type="hidden" value="${user.agehigh}" id="agehigh" name="agehigh">
   <input type="hidden" value="${user.agelow}" id="agelow" name="agelow">
   <input type="hidden" id="height" name="height">
   <input type="hidden" id="body" name="body">
   <input type="hidden" id="education" name="education">
   <input type="hidden" id="pay" name="pay">
   <div class="box-left">
      <div class="modal_menu">
         <div class="modal_itemlist">
         
            <div class="modal_item" id="modal_item" onclick="open_addr()">
               <div class="box-l title">
                  거주지
               </div>
               <div class="box-r" id="addr">
                  상관없음
               </div>
            </div>
            <br>
            <div class="modal_item" id="modal_item" onclick="open_agehigh()">
               <div class="box-l">
                  나이 상한
               </div>
               <div class="box-r" id="ageh">
                  ${user.agehigh}
               </div>
            </div>
            <br>
            <div class="modal_item" id="modal_item" onclick="open_agelow()">
               <div class="box-l">
                  나이 하한
               </div>
               <div class="box-r" id="agel">
                  ${user.agelow}
               </div>
            </div>
            <br>
            <div class="modal_item" id="modal_item" onclick="open_height()">
               <div class="box-l">
                  키
               </div>
               <div class="box-r" id="heightdiv">
                  상관없음
               </div>
            </div>
            <br>
            <br>
            <div class="modal_item" id="modal_item" onclick="open_body()">
               <div class="box-l">
                  체형
               </div>
               <div class="box-r" id="bodydiv">
                  상관없음
               </div>
            </div>
            <br>
            <div class="modal_item" id="modal_item" onclick="open_education()">
               <div class="box-l">
                  최종학력
               </div>
               <div class="box-r" id="edu">
                  상관없음
               </div>
            </div>
            <br>
            <div class="modal_item" id="modal_item" onclick="open_pay()">
               <div class="box-l">
                  연봉
               </div>
               <div class="box-r" id="paydiv">
                  상관없음
               </div>
            </div>
            <br>
         </div>
      </div>
   </div>
   <div class="box-right">
      <div class="modal_result">
         <div id="result" class="modal_search">
         
         </div>
      </div>
   </div>
   </div>
   
   <div class="box-bottom">
      <div class="box-button">
         <input type="button" value="취소" onclick="location.href='../user/usersearch.shop'">&nbsp;<input type="submit" value="검색">
      </div>
   </div>
   
   </form>
   
</body>
</html>