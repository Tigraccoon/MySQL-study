CREATE DATABASE;

--AUTO_INCREMENT : 자동 번호 부여(1~n)
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