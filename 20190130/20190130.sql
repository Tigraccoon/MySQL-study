USE java;

CREATE TABLE health(
id VARCHAR(50) NOT NULL PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
age INT DEFAULT 0,
height DOUBLE DEFAULT 0,
weight DOUBLE DEFAULT 0,
bmi DOUBLE DEFAULT 0
);

DESC health;


INSERT INTO health (id,NAME,age,height,weight) VALUES ('hong','홍상현',20,170.5,66.5);
INSERT INTO health (id,NAME,age,height,weight) VALUES ('kim','김철수',30,160.5,76.5);
INSERT INTO health (id,NAME,age,height,weight) VALUES ('park','박철수',25,180.5,80.5);

SELECT * FROM health;

SELECT id,NAME,age,height,weight,(weight/((height/100)*(height/100))) bmi FROM health WHERE id = 'kim';



--

CREATE TABLE score(
student_no VARCHAR(50) NOT NULL PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
kor INT DEFAULT 0,
eng INT DEFAULT 0,
mat INT DEFAULT 0,
tot INT DEFAULT 0,
AVG DOUBLE DEFAULT 0
);

DESC score;

INSERT INTO score (student_no,NAME,kor,eng,mat) VALUES (1,'김철수',90,80,70);
INSERT INTO score (student_no,NAME,kor,eng,mat) VALUES (2,'이철수',80,88,70);
INSERT INTO score (student_no,NAME,kor,eng,mat) VALUES (3,'박철수',70,80,70);
INSERT INTO score (student_no,NAME,kor,eng,mat) VALUES (4,'최철수',70,30,70);
INSERT INTO score (student_no,NAME,kor,eng,mat) VALUES (5,'진철수',30,10,80);
INSERT INTO score (student_no,NAME,kor,eng,mat) VALUES (6,'장철수',50,10,80);
INSERT INTO score (student_no,NAME,kor,eng,mat) VALUES (7,'홍철수',90,50,70);
INSERT INTO score (student_no,NAME,kor,eng,mat,tot,avg) VALUES (8,'안철수',80,80,80,240,80);
INSERT INTO score (student_no,NAME,kor,eng,mat,tot,avg) VALUES (9,'강철수',100,80,90,(kor+eng+mat),((kor+eng+mat)/3.0));

SELECT * FROM score;

-- 계산식 또는 컬럼 as 별칭 (alias)
-- as 생략 가능
SELECT student_no,NAME,kor,eng,mat,(kor+eng+mat) AS tot,((kor+eng+mat)/3.0)AS AVG FROM score;

-- round(실수값, 소수이하자리수) 반올림
SELECT student_no,NAME,kor,eng,mat,(kor+eng+mat) AS tot,ROUND(((kor+eng+mat)/3.0),1)AS AVG FROM score;

-- 이름이 김으로 시작하는 학생
SELECT * FROM score WHERE NAME LIKE '김%';



