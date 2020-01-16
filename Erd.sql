SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS board;
DROP TABLE IF EXISTS chat;
DROP TABLE IF EXISTS promise;
DROP TABLE IF EXISTS good;
DROP TABLE IF EXISTS interest;
DROP TABLE IF EXISTS report;
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
	PRIMARY KEY (boardnum)
);


CREATE TABLE chat
(
	-- 대화 건수
	chatnum int NOT NULL AUTO_INCREMENT COMMENT '대화 건수',
	-- 좋아요 누른 사람 id
	id varchar(20) NOT NULL COMMENT '좋아요 누른 사람 id',
	-- 좋아요 눌린 사람 id
	goodid varchar(20) NOT NULL COMMENT '좋아요 눌린 사람 id',
	-- 채팅 내용
	chatcontent varchar(4000) COMMENT '채팅 내용',
	-- 채팅 시 사진 전송url
	chatpicurl varchar(50) COMMENT '채팅 시 사진 전송url',
	PRIMARY KEY (chatnum)
);


CREATE TABLE good
(
	-- 좋아요 누른 사람 id
	id varchar(20) NOT NULL COMMENT '좋아요 누른 사람 id',
	-- 좋아요 눌린 사람 id
	goodid varchar(20) NOT NULL COMMENT '좋아요 눌린 사람 id',
	PRIMARY KEY (id, goodid)
);


CREATE TABLE interest
(
	-- 관심사 이름
	interestname varchar(20) NOT NULL COMMENT '관심사 이름',
	-- 관심사 사진 url
	interestpicurl varchar(50) NOT NULL COMMENT '관심사 사진 url',
	PRIMARY KEY (interestname)
);


CREATE TABLE promise
(
	-- 약속 건수
	promisenum int NOT NULL AUTO_INCREMENT COMMENT '약속 건수',
	-- 좋아요 누른 사람 id
	id varchar(20) NOT NULL COMMENT '좋아요 누른 사람 id',
	-- 좋아요 눌린 사람 id
	goodid varchar(20) NOT NULL COMMENT '좋아요 눌린 사람 id',
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
	-- 신고 내용
	reportcontent varchar(4000) NOT NULL COMMENT '신고 내용',
	-- 신고 날짜
	reporttime date NOT NULL COMMENT '신고 날짜',
	-- 신고 내역 처리여부
	reportprocess int(2) NOT NULL COMMENT '신고 내역 처리여부',
	PRIMARY KEY (reportnum)
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
	PRIMARY KEY (id)
);



/* Create Foreign Keys */

ALTER TABLE chat
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


ALTER TABLE board
	ADD FOREIGN KEY (id)
	REFERENCES user (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE good
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



