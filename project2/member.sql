USE project2

--회원 테이블
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

SELECT id,pwd FROM member WHERE email LIKE 'admin@admin.com';



--상품 테이블
CREATE TABLE product(
pcode INT NOT NULL AUTO_INCREMENT,
pname VARCHAR(50) NOT NULL,
price INT,
pamount INT,
PRIMARY KEY(pcode)
);

DESC product;

INSERT INTO product (pname,price,pamount) VALUES('JavaEE 1year serial number',999,500);
INSERT INTO product (pname,price,pamount) VALUES('Oracle DB 1year serial number',499,500);
INSERT INTO product (pname,price,pamount) VALUES('MSSQL 1year serial number',599,500);
INSERT INTO product (pname,price,pamount) VALUES('Photoshop CC 2019 serial number',399,500);
INSERT INTO product (pname,price,pamount) VALUES('Premiere Pro CC 2019 serial number',799,500);
INSERT INTO product (pname,price,pamount) VALUES('TeamViewer 1year serial number',299,500);
INSERT INTO product (pname,price,pamount) VALUES('GitHUB 1year serial number',99,500);
INSERT INTO product (pname,price,pamount) VALUES('Norton Security 1year serial number',199,500);

SELECT * FROM product;