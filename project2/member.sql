USE project2

CREATE TABLE member(
id VARCHAR(100) NOT NULL PRIMARY KEY,
pwd VARCHAR(100) NOT NULL,
NAME VARCHAR(50) NOT NULL,
hp VARCHAR(50) NOT NULL,
address VARCHAR(150) NOT NULL,
email VARCHAR(100) NOT NULL,
amount INT DEFAULT 0,
POINT INT DEFAULT 0,
DATE DATE
);

DROP TABLE member;

SELECT * FROM member;

DESC member;

INSERT INTO member VALUES('admin','admin','관리자','000-0000-0000','서울','admin@admin.com',9999999,99999999,NOW());
INSERT INTO member VALUES('user1','1111','홍길동','010-1111-1111','서울시 강남구 서초동','user1@user.com',0,50000,NOW());

SELECT id,pwd,NAME,hp,address,email,amount,POINT,DATE FROM member ORDER BY id;


