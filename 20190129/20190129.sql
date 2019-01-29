--emp테이블
--DB 선택

USE java;

--사원(emp) 테이블(사원번호, 사원이름, 입사일자, 급여)
--기본 키로 잡으면 not null은 기본으로 들어감

CREATE TABLE emp (
empno INT PRIMARY KEY,
ename VARCHAR(50) NOT NULL,
hiredate DATETIME,
sel INT DEFAULT 0
);

DESC emp;

--datetime은 MySQL의 날짜 관련 데이터 타입
--default 0 값을 입력하지 않으면 기본적으로 0이 셋팅됌

--레코드 입력
--모든 컬럼을 입력할 경우 컬럼은 생략 가능

INSERT INTO emp VALUES (10,'김찰스','2019-01-01',3000);

SELECT * FROM emp;

--일부 컬럼 입력

INSERT INTO emp (empno,ename) VALUES (20,'박찰스');


--문제 1

--Account
--bank(은행이름), num(계좌), name(예금주), money(잔액)
CREATE TABLE ACCOUNT(
bank VARCHAR(50) NOT NULL,
num VARCHAR(50) NOT NULL,
NAME VARCHAR(50) NOT NULL,
money INT DEFAULT 0
);

INSERT INTO ACCOUNT VALUES ('kb','111-111-1111','김철수',100000);
INSERT INTO ACCOUNT VALUES ('농협','222-222-2222','박철수',500000);
INSERT INTO ACCOUNT VALUES ('신한','333-333-3333','이철수',300000);

SELECT * FROM ACCOUNT ORDER BY money ASC;
--asc 오름차순 desc 내림차순


--문제 2

CREATE TABLE address (
email VARCHAR(50) NOT NULL PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
addr VARCHAR(100) NOT NULL,
hp VARCHAR(50) NOT NULL
);

INSERT INTO address VALUES ('hong@gmail.com','홍철수','서울 서초동','010-1111-1111');
INSERT INTO address VALUES ('kim@gmail.com','김철수','부산 동래구','010-2222-2222');
INSERT INTO address VALUES ('lee@gmail.com','이철수','경기 안산시','010-3333-3333');
INSERT INTO address VALUES ('choi@gmail.com','최철수','강원 속초시','010-4444-4444');
INSERT INTO address VALUES ('park@gmail.com','박철수','충남 아산시','010-5555-5555');

SELECT * FROM address;

DELETE FROM address WHERE NAME = '최철수';

--문제 3 update로 hp가 010-5555-5555인 사람의 주소를 전남 순창으로 바꿔보시오

UPDATE address SET addr = '전남 순창시' WHERE hp = '010-5555-5555';

