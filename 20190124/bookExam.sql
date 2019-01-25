CREATE DATABASE;

--AUTO_INCREMENT : 자동 번호 부여(1~n)
--NOT NULL : NULL값을 허용하지 않음, 필수 입력
--CHAR : 고정 길이 문자열
--VARCHAR : 가변 길이 문자열(oracle에선 VARCHAR2)
--primary key : 기본키, 주키(레코드의 식별자, 중복 불가)
--create table : 테이블 이름(필드명 자료형(사이즈) 제약조건
--record : 컬럼들의 집합체

--테이블 만들기
CREATE TABLE books(
book_id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(50),
publisher VARCHAR(30),
YEAR VARCHAR(10),
price INT,
PRIMARY key(book_id)
);

-- 테이블 목록 확인
SHOW TABLES;

-- 테이블 삭제(테이블 잘못 만들었을 땐 drop 후 재작성)
DROP TABLE books;





-- 숙제!

-- 테이블 생성
CREATE TABLE bookExam(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(40),
author VARCHAR(20),
bookdate VARCHAR(10),
price INT,
PRIMARY KEY(id)
);

-- 생성 확인
SHOW TABLES;

-- 테이블 삭제
DROP TABLE bookExam;

-- 삭제 확인
SHOW TABLES;