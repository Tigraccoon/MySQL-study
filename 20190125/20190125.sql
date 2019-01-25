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

--자료 입력
--insert into 테이블(컬럼 이름들) values (값들);
INSERT INTO books(title,publisher,YEAR,price) VALUES('운영체제','삼양','2013',35000);

--데이터 확인
SELECT * FROM books;

INSERT INTO books(title,publisher,YEAR,price) VALUES("C언어",'영진','2012',30000);


--문제 1

SELECT * FROM books;

INSERT INTO books(title,publisher,YEAR,price) VALUES('자바','삼성','2014',45000);
INSERT INTO books(title,publisher,YEAR,price) VALUES('네트워크','길벗','2015',55000);
INSERT INTO books(title,publisher,YEAR,price) VALUES('안드로이드','영진','2016',65000);

SELECT * FROM books;

--


--데이터(레코드) 삭제
-- delete from 테이블 이름 where 조건
DELETE FROM books WHERE book_id = 8;

SELECT * FROM books;


--문제 2

SELECT * FROM books;

DELETE FROM books WHERE book_id = 2;

SELECT * FROM books; 

--

-- 테이블의 구조 확인
-- desc 테이블 이름;
DESC books;

-- 데이터 수정 처리
-- update 테이블 이름 set 필드 = 값 where 조건;

SELECT * FROM books; 

UPDATE books SET price = 40000 WHERE book_id = 7;

SELECT * FROM books; 


--문제 3

SELECT * FROM books; 

UPDATE books SET price = 25000 WHERE book_id = 3;

SELECT * FROM books; 

--

--문제 4

SELECT * FROM books; 

UPDATE books SET title = '데이터베이스' WHERE book_id = 4; 

SELECT * FROM books; 

--

--문제 5

CREATE TABLE bookExam(
title VARCHAR(50) NOT null,
author VARCHAR(50),
bookdate VARCHAR(50),
price INT,
PRIMARY KEY (title)
);

SHOW TABLES;

SELECT * FROM bookExam;

INSERT INTO bookExam (title,author,bookdate,price) VALUES ('Java','kim','2018',30000);
INSERT INTO bookExam (title,author,bookdate,price) VALUES ('DB','lee','2017',25000);
INSERT INTO bookExam (title,author,bookdate,price) VALUES ('HTML','park','2019',20000);
INSERT INTO bookExam (title,author,bookdate,price) VALUES ('JSP','hong','2016',35000);

SELECT * FROM bookExam;

DESC bookExam;



