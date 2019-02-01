USE java;

CREATE TABLE product (
product_no VARCHAR(50) NOT NULL PRIMARY KEY,
plocal VARCHAR(50) NOT NULL,
pname VARCHAR(50) NOT NULL,
company VARCHAR(50) NOT NULL,
uprice INT DEFAULT 0,
acc INT DEFAULT 0,
sprice INT DEFAULT 0
);

DESC product;

INSERT INTO product VALUES ('tv1234abc','서울강동','OLEDTV','LG',4000000,10,40000000);

SELECT * FROM product ORDER BY sprice ASC;

INSERT INTO product (product_no,plocal,pname,company) VALUES ('note34sam','서울강서','노트북','삼성');

INSERT INTO product VALUES ('vac123bad','경기안산','청소기','다이슨',600000,20,(uprice*acc));

INSERT INTO product VALUES ('desk234LG','경기수원','데스크탑PC','LG',800000,15,(uprice*acc));

SELECT * FROM product WHERE product_no LIKE '%LG%';

INSERT INTO product VALUES ('ref380LG','서울강북','냉장고','LG',3500000,5,(uprice*acc));