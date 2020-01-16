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
		var ws = new WebSocket("ws://${server}:${port}${path}/chatting.shop");
		// 서버와 연결될때
		ws.onopen = function(){
			//$("#chatStatus").text("info:connection opened")
			// chatInput 태그에 keydown 이벤트 등록
			$("input[name=chatInput]").on("keydown", function(evt){
				// evt : keyevent 객체
				if(evt.keyCode == 13){ // enter키
					var msg = $("input[name=chatInput]").val();
					ws.send(msg); // 서버로 입력된 메세지 전송
					$("input[name=chatInput]").val(""); // 입력된 내용 지움
				}
			})
		}
		// 서버에서 메세지 수신한 경우
		ws.onmessage = function(event){
			// prepand() : 앞쪽에 메세지 출력
			$("textarea").eq(0).prepend(event.data + "\n");
		}
		// 서버가 연결이 해제된 경우
		ws.onclose = function(event){
			$("#chatStatus").text("info:connection close");
		}
	})
</script>

<style type="text/css">
div {
	width: 100%;
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
	width: 80%; /* Could be more or less, depending on screen size */
	height: 500px;
}

.modal-left {
	height: 90%;
	width: 50%;
	float: left;
	padding-bottom: 0;
	box-sizing: border-box;
}

.modal-right {
	height: 90%;
	width: 50%;
	float: left;
	padding-bottom: 0;
	box-sizing: border-box;
}
</style>

</head>

<body>

	<div>
		<div class="chatleft" style="border-right: 1px solid #aaaaaa;">
			<img src="" width="289" height="289">
			<h2 style="margin-bottom: 0;">상대 닉네임</h2>
			<h3>나이 지역</h3>
			<p style="margin-bottom: 0;">인사말</p>
			<br>
			<h3>상세 프로필</h3>
			<p style="margin-bottom: 0;">키 : ---cm</p>
			<p style="margin-bottom: 0;">체형 : 보통</p>
			<p style="margin-bottom: 0;">학력 : 고등학교 졸업</p>
			<p>생일 : 2020-01-10</p>
		</div>
		<div class="chatcenter" style="padding-left: 15px;">
			<div id="chatStatus"></div>
			<textarea rows="12" cols="10" name="chatMsg"></textarea>
			<br>
			<hr style="margin-top: 3px; margin-bottom: 3px;">
			<br> <input type="text" name="chatInput"> <br>
			<div class="bu">
				<button
					style="border-radius: 100px; padding: 12px; vertical-align: middle; align-items: center; display: inline-flex;">
					<i class="fas fa-image" style="font-size: 25px;"></i>
				</button>
				&nbsp;&nbsp;&nbsp;
				<button onclick="javascript:open_pop()"
					style="border-radius: 100px; padding: 12px; vertical-align: middle; align-items: center; display: inline-flex;">
					<i class="fas fa-calendar-alt" style="font-size: 25px;"></i>
				</button>
				<button
					style="float: right; padding-right: 48px; padding-left: 48px; border-radius: 100px;">전송</button>
			</div>
		</div>
	</div>

	<!-- The Modal -->
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-left" style="padding-right: 5%;">
				<div style="border: 1px solid; background-color: black; height: 320px;">
					
				</div>
				<br>
				약속 장소 : 가산디지털단지 1호선
			</div>
			<div class="modal-right">
				<h2>제목</h2>
					<input type="text">
				<h2>내용</h2>
				<textarea rows="5" cols="5"></textarea>
				<h2>날짜</h2>
				<input type="text">
			</div>
			<div class="foot">
				<div style="float: right;">
					<button style="width: 10%; border-radius: 5px; background-color: #00c1bf; color: white; float: right; margin-left: 3%;">보내기!</button>
					<button onclick="close_pop()"
						style="width: 10%; border-radius: 5px; background-color: #00c1bf; color: white; float: right;">닫기</button>
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript"> 
    	function open_pop() {
    		 $('#myModal').show();
    	}
        function close_pop(flag) {
             $('#myModal').hide();
        };        
  	</script>

</body>

</html>