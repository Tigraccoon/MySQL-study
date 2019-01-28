USE java;

--member테이블 생성
CREATE TABLE member(
userid VARCHAR(50) NOT NULL PRIMARY KEY,
pwd VARCHAR(50) NOT NULL,
name VARCHAR(50) NOT NULL
);

--자료 입력
INSERT INTO member VALUES ('kim','1234','찰스킴');
INSERT INTO member VALUES ('park','2222','찰스팍');
INSERT INTO member VALUES ('lee','3333','찰스리');
INSERT INTO member VALUES ('hong','4444','찰스홍');

SELECT * FROM member;

DESC member;

--로그인 처리(맞는 경우) 값이 출력 됌
SELECT * FROM member WHERE userid = 'kim' AND pwd = '1234';

--로그인 처리(틀릴 경우) 값이 출력 안 됌
SELECT * FROM member WHERE userid = javajava'kim' AND pwd = '1235';



--자동차의 유일한 등록번호(license number), 제조사(company), 차종(type), 제작연도(year), 연비(efficiency)

CREATE TABLE car(
license_number VARCHAR(50) NOT NULL,
company VARCHAR(50),
type VARCHAR(50),
year INT,
efficiency INT,
PRIMARY KEY (license_number)
);

--복합키를 위해 primary key는 따로 쓰는게 좋음.
--PRIMARY KEY (필드명, 필드명)

SELECT * FROM car;

INSERT INTO car (license_number,company,TYPE,YEAR,efficiency) VALUES ('99가9999','횬다이','오토',2017,15);
INSERT INTO car (license_number,company,TYPE,YEAR,efficiency) VALUES ('88가8888','키아','수동',2010,11);
INSERT INTO car (license_number,company,TYPE,YEAR,efficiency) VALUES ('77가7777','쌍룡','오토',2019,14);
INSERT INTO car (license_number,company,TYPE,YEAR,efficiency) VALUES ('66가6666','샘숭','오토',2000,12);
INSERT INTO car (license_number,company,TYPE,YEAR,efficiency) VALUES ('55가5555','대우','오토',2008,20);

DELETE FROM car;

SELECT license_number,company FROM car;

--데이터 삭제 : delete from 테이블 이름 where 조건

DELETE FROM car WHERE license_number = '55가5555';

--데이터 수정 : update 테이블 이름 set 필드명 = 값 where 필드명 = 값

UPDATE car SET YEAR = 2019 WHERE license_number = '99가9999';


--문제2 88가8888인 데이터를 삭제

DELETE FROM car WHERE license_number = '88가8888';

--문제3 77가7777인 데이터에서 type을 수동으로 업데이트

UPDATE car SET TYPE = '수동' WHERE license_number = '77가7777';

SELECT * FROM car;

