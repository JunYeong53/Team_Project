<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Websocket Client</title>

<c:set var="port" value="${pageContext.request.localPort}" />
<c:set var="server" value="${pageContext.request.serverName}" />
<c:set var="path" value="${pageContext.request.contextPath}" />

<script type="text/javascript">
$(function(){ // 문서 준비 완료
    var params = location.search.substr(location.search.indexOf("=") + 1);
    var ws = new WebSocket("ws://${server}:${port}${path}/chatting.shop?chatnum="+params);
    var offset = $("p").last().offset();
    $('.msg_history').animate({scrollTop : offset.top}, 100);
    // 서버와 연결될때
    ws.onopen = function(){
       //$("#chatStatus").text("info:connection opened")
       // chatInput 태그에 keydown 이벤트 등록
       $(".msgsend").click(function(){
          if($("input[name=chatInput]").val() != ""){
               var msg = $("input[name=chatInput]").val();
               $.ajax({
                     type : "GET",
                     url : "../ajax/insertchat.shop",
                     data : {
                        "msg" : msg,
                        "chatnum" : params
                     },
                     success : function(data) {               
                     ws.send(msg); // 서버로 입력된 메세지 전송
                     $("input[name=chatInput]").val(""); // 입력된 내용 지움
                     
                     }
               })
            }
               else{
                  alert("매새지를 입력해주세요!");
               }
       })
       
       $("input[name=chatInput]").on("keydown", function(evt){
          // evt : keyevent 객체
          if(evt.keyCode == 13){ // enter키
             if($("input[name=chatInput]").val() != ""){
             var msg = $("input[name=chatInput]").val();
             $.ajax({
                   type : "GET",
                   url : "../ajax/insertchat.shop",
                   data : {
                      "msg" : msg,
                      "chatnum" : params
                   },
                   success : function(data) {               
                   ws.send(msg); // 서버로 입력된 메세지 전송
                   $("input[name=chatInput]").val(""); // 입력된 내용 지움
                   
                   }
             })
          }
             else{
                alert("매새지를 입력해주세요!");
             }
          }
       })
    }
    // 서버에서 메세지 수신한 경우
    ws.onmessage = function(event){
         if(event.data.startsWith('${loginUser.nickname}')) {
          $(".msg_history").append('<div class="outgoing_msg"><div class="sent_msg"><p class="msg_content" style="background : #05728f none repeat scroll 0 0; color:white;">'+
                event.data.substring(event.data.indexOf(":") + 1, event.data.length)+'</p></div></div>');
          $('.msg_history').animate({scrollTop: $('.msg_history').prop("scrollHeight")}, 500);
       }
       else{
          $(".msg_history").append('<div class="incoming_msg"><div class="incoming_msg_img">'+
                '<img class="ptpic" src="#" alt="sunil" style="max-width:100%;">'+
                '</div><div class="received_msg"><div class="received_withd_msg"><p class="msg_content">'+
                event.data.substring(event.data.indexOf(":") + 1, event.data.length)+'</p></div></div></div>');
          $('.msg_history').animate({scrollTop: $('.msg_history').prop("scrollHeight")}, 500);
       }
    }
    // 서버가 연결이 해제된 경우
    ws.onclose = function(event){
       $("#chatStatus").text("info:connection close");
    }  
})
 function promisesubmit(id,goodid) {
      var params = location.search.substr(location.search.indexOf("=") + 1);
      var lat = $("#lat").val();
      var lon = $("#lon").val();
      var subject = $("#subject").val();
      var content = CKEDITOR.instances.content.getData();      
      var month = $("#month option:selected").val();
      var day = $("#day option:selected").val();
      var hour = $("#hour option:selected").val();
      var minute = $("#minute option:selected").val();
      var place = $("#place").val();
      if(lat == "" || lon == "") {
         alert("키워드를 통해 위치를 잡아주세요!");
         return false;
      }
      if(subject == "") {
         alert("제목을 입력하세요!")
         return false;
      }
      if(content == "") {
         alert("내용을 입력하세요!")
         return false;
      }
      if(month == "") {
         alert("월을 선택하세요!")
         return false;
      }
      if(day == "") {
         alert("일을 선택하세요!")
         return false;
      }
      if(hour == "") {
         alert("시간을 선택하세요!")
         return false;
      }
      if(minute == "") {
         alert("분을 선택하세요!")
         return false;
      }
      $.ajax({
         type : "POST",
         url : "../ajax/chatpromise.shop",
         data : {
            "chatnum" : params,
            "id" : id,
            "goodid" : goodid,
            "lat" : lat,
            "lon" : lon,
            "promisesubject" : subject,
            "promisecontent" : content,
            "month" : month,            
            "day" : day,
            "hour" : hour,
            "minute" : minute,
            "place" : place
         },
         success : function() {               
            $("#subject").val("");
            $("#lat").val("");
            $("#lon").val("");
            $("#content").val("");            
            $("#keyword").val("");
            $("#map").empty();
            alert("약속 보내기 성공");            
         },
         error:function(){
            $("#subject").val("");
            $("#lat").val("");
            $("#lon").val("");
            $("#content").val("");            
            $("#keyword").val("");
            $("#map").empty();
              alert("이미 약속을 보내셨습니다");
             }      
      })      
      $("#myModal").hide();
   }
   
   function followcancel(goodid, id){
      var params = location.search.substr(location.search.indexOf("=") + 1);
      var check = confirm("좋아요를 취소하면 해당 채팅 기록도 같이 사라집니다.\n팔로우 취소 하시겠습니까?")
      if(check){
         $.ajax({
               type : "GET",
               url : "../ajax/followcancel.shop",
               data : {
                  "id" : id,
                  "goodid" : goodid,
                  "chatnum" : params
               },
               success : function(data) {               
                     alert("좋아요가 취소되었습니다. \n채팅방을 나갑니다.")
                     location.href = "../user/usersearch.shop";
               }
         })
      }
   }
  
   
</script>

<style type="text/css">
div {
   width:100%;
}

div.chatleft {
   width: 25%;
   float: left;
   box-sizing: border-box;
}

div.chatcenter {
   width: 75%;
   float: left;
   box-sizing: border-box;
}

.modal {
   display: none; /* Hidden by default */
   position: fixed; /* Stay in place */
   z-index: 1; /* Sit on top */
   left: 0;
   top: 0;
   width: 100%; /* Full width */
   height: 100%; /* Full height */
   overflow: auto; /* Enable scroll if needed */
   background-color: rgb(0, 0, 0); /* Fallback color */
   background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

.modal-content {
   background-color: #fefefe;
   margin: 8% auto; /* 15% from the top and centered */
   padding: 20px;
   border: 1px solid #888;
   width: 70%; /* Could be more or less, depending on screen size */
   height: 550px;
}

.modal-left {   
   width: 50%;
   float: left;
   padding-bottom: 0;
   box-sizing: border-box;
}

.modal-right {   
   width: 50%;
   float: left;
   padding-bottom: 0;
   box-sizing: border-box;
}
.msg_history{
   height: 450px;
   overflow-y: auto;
   width: 135%;
}
.incoming_msg_img {
  display: inline-block;
  width: 6%;
}
.received_msg{
   display: inline-block;
   padding: 0 0 0 12px;
     vertical-align: top;
     width: 94%;
}
.received_withd_msg p {
  background: #ebebeb none repeat scroll 0 0;
  border-radius: 25px;
  color: #646464;
  font-size: 14px;
  margin: 0;
  padding: 5px 10px 5px 12px;
  width: 100%;
}
.received_withd_msg{
   width: 57%;
}
.mesgs {
  float: left;
  padding: 30px 15px 0 25px;
  width: 40%;
}
.sent_msg p {
  background: #05728f none repeat scroll 0 0;
  border-radius: 25px;
  font-size: 14px;
  margin: 0; color:#fff;
  padding: 5px 10px 5px 12px;
  width:100%;
}
.interestname{
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  text-align: center;
  vertical-align: middle;
  width: 150px;
  color: black;
}
.interestcon:hover .interestimg{
  opacity: 0.3;
}
.interestcon:hover .interestname{
   opacity: 1;
}
.outgoing_msg{ overflow:hidden; margin:26px 0 26px;}
.sent_msg{
   float: right;
   width: 43%;
}
.tb{
   width:130%;
}
.ptpic{
   border:1px solid;
   margin-top: 10%;
    width: 35px;
    height: 35px;
    border-radius: 70%;
    overflow: hidden;
    vertical-align: middle;
}

select {
   width:10%;
   background-size: 1em;
   padding-right: 3px;
   height:30px;
   
}
font {
      font-weight: bold;
       font-size: 21px;
   }

</style>



</head>

<body>
<br>
   <input type="hidden" name="lat" id="lat">  <!-- 위도 -->
   <input type="hidden" name="lon" id="lon">  <!-- 경도 -->
   <input type="hidden" name="place" id="place"> <!-- 선택한 장소 -->
   <div>
      <div class="chatleft" style="border-right: 1px solid #aaaaaa;">
         <img src="${path}/login/img/${partner.profileurl1}" width="289" height="289">
         <h2 style="margin-bottom: 0;">${partner.nickname}</h2>
         <h3>${partner.age} ${partner.address}</h3>
         <p style="margin-bottom: 0;">${partner.greeting}</p>
         <br>         
         <h3>상세 프로필</h3>
         <p style="margin-bottom: 0;">키 : ${partner.height}cm</p>
         <p style="margin-bottom: 0;">체형 : ${partner.body}</p>
         <p style="margin-bottom: 0;">학력 : ${partner.education}</p>
         <p>생일 : ${partner.birthday}</p>
      </div>
      <div id="chatStatus"></div>
         <div class="mesgs">
            <div class="msg_history">
               <c:forEach var="postchat" items="${postchat}">
                  <c:if test="${postchat.messagesender != userid}">
                     <div class="incoming_msg">
                        <div class="incoming_msg_img">
                           <img class="ptpic" src="${path}/login/img/${postchat.user.profileurl1}" alt="sunil" style="max-width:100%;">
                        </div>
                        <div class="received_msg">
                           <div class="received_withd_msg">
                              <p class="msg_content">
                                 ${postchat.messagecontent}
                              </p>
                           </div>
                        </div>
                     </div>
                  </c:if>
                  <c:if test="${postchat.messagesender == userid}">
                     <div class="outgoing_msg">
                        <div class="sent_msg">
                           <p class="msg_content" style="background : #05728f none repeat scroll 0 0; color:white;">
                              ${postchat.messagecontent}
                           </p>
                        </div>
                     </div>
                  </c:if>
               </c:forEach>
         </div>
         <div class="tb">
         <hr style="margin-top: 3px; margin-bottom: 3px;">
         <br> <input type="text" name="chatInput"> <br>
            <div class="bu">
            &nbsp;&nbsp;&nbsp;
            <button onclick="javascript:open_pop()"
               style="border-radius: 100px; padding: 12px; vertical-align: middle; align-items: center; display: inline-flex;">
               <i class="fas fa-calendar-alt" style="font-size: 25px;"></i>
            </button>
            <button class="msgsend"
               style="float: right; padding-right: 48px; padding-left: 48px; border-radius: 100px;">전송</button>
            </div>
         </div>
         </div>
         <div style="float: right; width: 20%;">
            <h1>상대방 관심사</h1>
            <c:forEach var="intlist" items="${interestlist}" varStatus="status">
            <div class="interestcon" style="width: 130px; height: 130px; display: inline;">
               <span class="interestname"><br><br>${intlist.interestname}</span>
               <img src="${path}/interest/${intlist.interestpicurl}" style="width: 140px; height: 140px;" class="interestimg">
               <c:if test="${status.index % 2 == 1}"><br></c:if>
            </div>
            </c:forEach>
            <br><br>
            <button onclick="followcancel('${partner.id}', '${userid}')"
            style="width: 250px; border-radius: 25px; background: #00b2c1; color: white; font-size: 12px;">
               <i class="fas fa-thumbs-down"></i>&nbsp;팔로우 취소
            </button>
         </div>
      </div>
      
   
   
   <!-- The Modal -->
   <div id="myModal" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
         <div class="modal-left" style="padding-right: 5%;">
            <div id="map" style="height: 320px; overflow:hidden; "></div>      
     
         <h2>키워드로 장소 찾기</h2><input type="text" id="keyword" placeholder="키워드로 검색하세요. ex)지역 맛집, 영화관, 카페" name="keyword">
         <button onclick="submit()" style="background-color: #00c1bf; float: right; color: white;  border-radius: 5px;">검색</button>
         </div>
         <div class="modal-right">
            <h2>제목</h2>
               <input type="text" name="promisesubject" id="subject">
            <h2>내용</h2>
            <textarea rows="5" cols="5" name="promisecontent" id="content"></textarea>
            <script> CKEDITOR.replace('promisecontent', { height: 150 }); </script><br>
            <font>날짜 : 2020년</font>&nbsp;<select id="month">
                  <c:forEach begin="1" end="12" var="m">
                     <option value="${m}">${m}</option>
                  </c:forEach>
               </select> 월&nbsp;
               <select id="day">
                  <c:forEach begin="1" end="31" var="m">
                     <option value="${m}">${m}</option>
                  </c:forEach>
               </select>일&nbsp;
               <select id="hour">
                  <c:forEach begin="0" end="23" var="m">
                     <option value="${m}">${m}</option>
                  </c:forEach>
               </select>시&nbsp; 
               <select id="minute">                  
                     <option value="00">0</option>
                     <option value="15">15</option>
                     <option value="30">30</option>
                     <option value="45">45</option>                  
               </select>분  
         </div>
         <div class="foot">
            <div style="float: right;">
               <button style="width: 10%; border-radius: 5px; background-color: #00c1bf; color: white; float: right; margin-left: 3%;"
                onclick="promisesubmit('${userid}','${partner.id}')">보내기!</button>
               <button onclick="close_pop()"
                  style="width: 10%; border-radius: 5px; background-color: #00c1bf; color: white; float: right;">닫기</button>
            </div>
         </div>
      
      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc6c555d6c8e3f785aa010abc91e6bbc&libraries=services"></script>
   <script>
   
function submit() {
   iwRemoveable = true;
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1, removable : iwRemoveable});
var keyword = document.getElementById('keyword').value;
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch(keyword, placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
   
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });   
    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {       
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        var place2 = place.place_name;
        infowindow.open(map, marker);        
        var position = marker.getPosition();
          var latitude = position.getLat(); // 위도
          var longitude = position.getLng(); // 경도
          $("input[name=lat]").val(latitude);
          $("input[name=lon]").val(longitude);
          $("input[name=place]").val(place2);
        map.panTo(position); // 마커 클릭시 마커위치로 지도중앙정렬
    });   
 }

}
</script>
      
   </div>
</div>
<script>
function open_pop() {
    $('#myModal').show();
   
}
function close_pop(flag) {
   $("#myModal").hide();
   $("#subject").val("");
   $("#lat").val("");
   $("#lon").val("");
   $("#content").val("");
   $("#day").val("");
   $("#keyword").val("");
   $("#map").empty();
};
</script>

</body>

</html>