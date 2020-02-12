SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS board;
DROP TABLE IF EXISTS buy;
DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS chatroom;
DROP TABLE IF EXISTS promise;
DROP TABLE IF EXISTS good;
DROP TABLE IF EXISTS history;
DROP TABLE IF EXISTS interest;
DROP TABLE IF EXISTS report;
DROP TABLE IF EXISTS req;
DROP TABLE IF EXISTS user;




/* Create Tables */

CREATE TABLE board
(
	-- 게시판 건수(공지사항, 건의사항)
	boardnum int NOT NULL AUTO_INCREMENT COMMENT '게시판 건수(공지사항, 건의사항)',
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	-- 게시판 제목
	boardsubject varchar(200) NOT NULL COMMENT '게시판 제목',
	-- 게시판 내용
	boardcontent varchar(4000) NOT NULL COMMENT '게시판 내용',
	-- 게시판 작성날짜
	boarduptime date NOT NULL COMMENT '게시판 작성날짜',
	-- 게시판 분류 코드
	boardtype int(2) NOT NULL COMMENT '게시판 분류 코드',
	accept int(5),
	PRIMARY KEY (boardnum)
);


CREATE TABLE buy
(
	-- 구매내역 번호
	buynum int NOT NULL AUTO_INCREMENT COMMENT '구매내역 번호',
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	-- 구매 상품 가격
	buyprice int(10) NOT NULL COMMENT '구매 상품 가격',
	-- 구매한 날짜
	buyday date NOT NULL COMMENT '구매한 날짜',
	-- 해당 유저 구매 건수
	buycount int(5) NOT NULL COMMENT '해당 유저 구매 건수',
	PRIMARY KEY (buynum)
);


CREATE TABLE chatroom
(
	-- 채팅방번호
	chatnum int NOT NULL AUTO_INCREMENT COMMENT '채팅방번호',
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	goodid varchar(20) NOT NULL,
	PRIMARY KEY (chatnum)
);


CREATE TABLE comment
(
	-- 게시판 건수(공지사항, 건의사항)
	boardnum int NOT NULL COMMENT '게시판 건수(공지사항, 건의사항)',
	-- 건의사항 피드백 내용
	commenttext varchar(4000) NOT NULL COMMENT '건의사항 피드백 내용',
	-- 피드백날짜
	commentday date NOT NULL COMMENT '피드백날짜',
	PRIMARY KEY (boardnum)
);


CREATE TABLE good
(
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	goodid varchar(20) NOT NULL,
	PRIMARY KEY (id, goodid)
);


CREATE TABLE history
(
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	historyid varchar(20) NOT NULL,
	PRIMARY KEY (id, historyid)
);


CREATE TABLE interest
(
	-- 관심사 이름
	interestname varchar(20) NOT NULL COMMENT '관심사 이름',
	-- 관심사 사진 url
	interestpicurl varchar(50) NOT NULL COMMENT '관심사 사진 url',
	PRIMARY KEY (interestname)
);


CREATE TABLE message
(
	-- 메세지 고유번호
	messagenum int NOT NULL AUTO_INCREMENT COMMENT '메세지 고유번호',
	-- 채팅방번호
	chatnum int NOT NULL COMMENT '채팅방번호',
	-- 송신자
	messagesender varchar(20) NOT NULL COMMENT '송신자',
	-- 메세지 내용
	messagecontent varchar(4000) NOT NULL COMMENT '메세지 내용',
	-- 메세지 작성날짜
	messageday date NOT NULL COMMENT '메세지 작성날짜',
	PRIMARY KEY (messagenum)
);


CREATE TABLE promise
(
	-- 약속 건수
	promisenum int NOT NULL AUTO_INCREMENT COMMENT '약속 건수',
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	goodid varchar(20) NOT NULL,
	-- 약속 잡기 제목
	promisesubject varchar(200) NOT NULL COMMENT '약속 잡기 제목',
	-- 약속잡기 내용
	promisecontent varchar(4000) NOT NULL COMMENT '약속잡기 내용',
	-- 약속잡은날
	promiseday date NOT NULL COMMENT '약속잡은날',
	-- 위도
	lat double NOT NULL COMMENT '위도',
	-- 경도
	lon double NOT NULL COMMENT '경도',
	PRIMARY KEY (promisenum)
);


CREATE TABLE report
(
	-- 신고 건수
	reportnum int NOT NULL AUTO_INCREMENT COMMENT '신고 건수',
	-- 피신고자 ID
	reportid varchar(20) NOT NULL COMMENT '피신고자 ID',
	-- 신고자 ID
	id varchar(20) NOT NULL COMMENT '신고자 ID',
	reportcolumn varchar(100) NOT NULL,
	-- 신고 내용
	reportcontent varchar(4000) NOT NULL COMMENT '신고 내용',
	-- 신고 날짜
	reporttime date NOT NULL COMMENT '신고 날짜',
	PRIMARY KEY (reportnum)
);


CREATE TABLE req
(
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	goodid varchar(20) NOT NULL,
	PRIMARY KEY (id, goodid)
);


CREATE TABLE user
(
	-- 유저id
	id varchar(20) NOT NULL COMMENT '유저id',
	-- 유저 비밀번호
	password varchar(30) NOT NULL COMMENT '유저 비밀번호',
	-- 유저 성별 M/F
	gender varchar(3) NOT NULL COMMENT '유저 성별 M/F',
	-- 유저 전화번호
	phone varchar(20) NOT NULL COMMENT '유저 전화번호',
	-- 유저 생년월일
	birthday date NOT NULL COMMENT '유저 생년월일',
	-- 유저 거주지 선택
	address varchar(8) NOT NULL COMMENT '유저 거주지 선택',
	email varchar(30) NOT NULL,
	-- 유저 닉네임
	nickname varchar(20) NOT NULL COMMENT '유저 닉네임',
	-- 유저 프로필사진 URL 1
	profileurl1 varchar(50) NOT NULL COMMENT '유저 프로필사진 URL 1',
	-- 유저 프로필사진 URL 2
	profileurl2 varchar(50) COMMENT '유저 프로필사진 URL 2',
	-- 유저 프로필사진 URL 3
	profileurl3 varchar(50) COMMENT '유저 프로필사진 URL 3',
	-- 유저 프로필사진 URL 4
	profileurl4 varchar(50) COMMENT '유저 프로필사진 URL 4',
	-- 유저 키 선택
	height int(3) NOT NULL COMMENT '유저 키 선택',
	-- 유저의 체형 선택
	body varchar(10) NOT NULL COMMENT '유저의 체형 선택',
	-- 유저 학력 선택
	education varchar(20) NOT NULL COMMENT '유저 학력 선택',
	-- 유저 연봉 선택
	pay varchar(30) NOT NULL COMMENT '유저 연봉 선택',
	-- 유저 인사말
	greeting varchar(50) COMMENT '유저 인사말',
	-- 유저 나이 => 생년월일 기준으로 계산후 입력
	age int(2) COMMENT '유저 나이 => 생년월일 기준으로 계산후 입력',
	-- 유저가 선택한 관심사 1
	interestname1 varchar(20) COMMENT '유저가 선택한 관심사 1',
	-- 유저가 선택한 관심사 2
	interestname2 varchar(20) COMMENT '유저가 선택한 관심사 2',
	-- 유저가 선택한 관심사3
	interestname3 varchar(20) COMMENT '유저가 선택한 관심사3',
	-- 유저가 선택한 관심사4
	interestname4 varchar(20) COMMENT '유저가 선택한 관심사4',
	-- 유저가 선택한 관심사 5
	interestname5 varchar(20) COMMENT '유저가 선택한 관심사 5',
	-- 유저가 선택한 관심사 6
	interestname6 varchar(20) COMMENT '유저가 선택한 관심사 6',
	-- 상대방 나이 상한
	agehigh varchar(10) NOT NULL COMMENT '상대방 나이 상한',
	-- 상대방 나이 하한
	agelow varchar(10) NOT NULL COMMENT '상대방 나이 하한',
	goodcnt int(3) NOT NULL,
	PRIMARY KEY (id)
);



/* Create Foreign Keys */

ALTER TABLE comment
	ADD FOREIGN KEY (boardnum)
	REFERENCES board (boardnum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE message
	ADD FOREIGN KEY (chatnum)
	REFERENCES chatroom (chatnum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE chatroom
	ADD FOREIGN KEY (id, goodid)
	REFERENCES good (id, goodid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE promise
	ADD FOREIGN KEY (id, goodid)
	REFERENCES good (id, goodid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE good
	ADD FOREIGN KEY (id, goodid)
	REFERENCES req (id, goodid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE board
	ADD FOREIGN KEY (id)
	REFERENCES user (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE buy
	ADD FOREIGN KEY (id)
	REFERENCES user (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE history
	ADD FOREIGN KEY (id)
	REFERENCES user (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE report
	ADD FOREIGN KEY (id)
	REFERENCES user (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE req
	ADD FOREIGN KEY (id)
	REFERENCES user (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



