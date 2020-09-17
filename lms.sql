-- MEMBER
CREATE TABLE "MEMBER" (
   "ID"       VARCHAR2(50) PRIMARY KEY,
   "EMAIL"    VARCHAR2(100),
   "PASSWORD" VARCHAR2(50)
);
-- MANAGER
CREATE TABLE "MANAGER" (
    "ID" VARCHAR2(50) PRIMARY KEY,
    "EMAIL" VARCHAR2(100),
    FOREIGN KEY (ID) REFERENCES "MEMBER"(ID)
);

-- CODE C99 과정은 99개까지 등록가능.
CREATE TABLE "COURSE" (
   "CODE" CHAR(3) PRIMARY KEY, 
   "NAME" VARCHAR2(150) 
);

-- CODE 99C12 한 과정당 카테고리은 99개까지 등록가능.
CREATE TABLE "CATEGORY" (
   "CODE"    CHAR(5) PRIMARY KEY,
   "NAME"    VARCHAR2(150) ,
   "CO_CODE" CHAR(3) NOT NULL,
   FOREIGN KEY (CO_CODE) REFERENCES "COURSE"(CODE)
);

-- CODE 9912C66 한 카테고리당 작은카테고리 99개까지 등록가능.
CREATE TABLE "SUB_CATEGORY" (
   "CODE"    CHAR(7) PRIMARY KEY,
   "NAME"    VARCHAR2(150) ,
   "CA_CODE" CHAR(5) NOT NULL,
   FOREIGN KEY (CA_CODE) REFERENCES "CATEGORY"(CODE)
);

-- CODE 991266C456 한 작은카테고리당 999개의 학습 모듈 등록가능.
CREATE TABLE "STUDY_CONTENTS" (
   "CODE"       CHAR(10) PRIMARY KEY,
   "IMPORTANCE" NUMBER(1),
   "TITLE"      VARCHAR2(150),
   "CONTENTS"   LONG,
   "REG_DATE"   DATE,
   "SUB_CODE"   CHAR(7) NOT NULL,
   FOREIGN KEY (SUB_CODE) REFERENCES "SUB_CATEGORY"(CODE)
);

-- CODE 991266456C100 한 학습모듈 당 주관식/객관식 합 999문제 등록 가능.
CREATE TABLE "M_QUESTION" (
   "CODE"       CHAR(13) PRIMARY KEY,
   "QUESTION"   VARCHAR2(3000),
   "STU_CODE"   CHAR(10) NOT NULL,
   FOREIGN KEY (STU_CODE) REFERENCES "STUDY_CONTENTS"(CODE)
);

-- CODE 991266456Q100 한 학습모듈 당 주관식/객관식 합 999문제 등록 가능.
CREATE TABLE "S_QUESTION" (
   "CODE"       CHAR(13) PRIMARY KEY,
   "QUESTION"   VARCHAR2(3000),
   "ANSWER"     VARCHAR2(1500),
   "STU_CODE"   CHAR(10) NOT NULL,
   FOREIGN KEY (STU_CODE) REFERENCES "STUDY_CONTENTS"(CODE)
);

CREATE TABLE "M_ANSWER" (
   "CODE"    NUMERIC,
   "Q_CODE"  CHAR(13),
   "ANSWER"  VARCHAR2(2000),
   "CORRECT" CHAR(1),                                                       -- 'O' OR 'X'
   PRIMARY KEY (CODE,Q_CODE), 
   FOREIGN KEY (Q_CODE) REFERENCES "M_QUESTION"(CODE)
);
 
CREATE TABLE "MY_COURSE"(
    "CO_CODE" CHAR(3),
    "MEM_ID" VARCHAR2(50),
    "PLAN" NUMBER(1), -- 0 (무계획) / 1 (계획)
    "PRIORITY" NUMBER(1), -- 1 (중요도 A만 학습), 2 ( 차근차근 순차 학습 ) 
    "DAYS_PER_WEEK" NUMERIC,
    "APPLY_DATE" DATE,
    "EXPECTED_END_DATE" DATE,
    PRIMARY KEY (CO_CODE, MEM_ID), 
    FOREIGN KEY (CO_CODE) REFERENCES "COURSE"(CODE),
    FOREIGN KEY (MEM_ID) REFERENCES "MEMBER"(ID)
);

CREATE TABLE "STUDY_LOG"(
    "MEM_ID" VARCHAR2(50),
    "STU_CODE" CHAR(10),
    "COMPLETED" CHAR(1),
    "REG_DATE" DATE,
    FOREIGN KEY (MEM_ID) REFERENCES "MEMBER"(ID),
    FOREIGN KEY (STU_CODE) REFERENCES "STUDY_CONTENTS"(CODE)
);

--재만 QNA_COMMENT 테이블
CREATE TABLE "QNA_COMMENT"(
"NO"    INT PRIMARY KEY,
"CONTENTS" VARCHAR2(1500),
"REG_DATE" VARCHAR2(30),
"USER_ID" VARCHAR2(50),
FOREIGN KEY (USER_ID) REFERENCES "MEMBER"(ID)
);

--재만 QNA_QUESTION 테이블
CREATE TABLE "QNA_QUESTION"(
"NO"    INT PRIMARY KEY,
"QNA_TYPE"  VARCHAR2(150),
"TITLE" VARCHAR2(150),
"CONTENTS" VARCHAR2(1500),
"COUNT" INT,
"REG_DATE" DATE,
"USER_ID" VARCHAR2(50),
"COMMENT_NO" INT,
FOREIGN KEY (USER_ID) REFERENCES "MEMBER"(ID),
FOREIGN KEY (COMMENT_NO) REFERENCES "QNA_COMMENT"(NO)
);

--------------------------------------------뷰 생성 -------------------------------------

--- VW_SEARCH_CATEGORY 뷰.
CREATE OR REPLACE VIEW VW_SEARCH_CATEGORY AS
    SELECT co.CODE AS CO_CODE, co.NAME AS CO_NAME, CA_CODE, CA_NAME, SUB_CODE, SUB_NAME
    FROM COURSE co LEFT OUTER JOIN
        ( SELECT ca.CO_CODE, ca.CODE AS CA_CODE, ca.NAME AS CA_NAME, sub.CODE AS SUB_CODE, sub.NAME AS SUB_NAME
          FROM CATEGORY ca LEFT OUTER JOIN SUB_CATEGORY sub ON ca.CODE = sub.CA_CODE
        )casub ON co.CODE = casub.CO_CODE ;
        
--- VW_QUESTION_LIST 뷰.
CREATE OR REPLACE VIEW VW_QUESTION_LIST AS
    SELECT CODE, STU_CODE, QUESTION, 'M' AS TYPE
    FROM M_QUESTION
    UNION
    SELECT CODE, STU_CODE, QUESTION, 'S' AS TYPE
    FROM S_QUESTION;

--- VW_STUDY_CONTENTS_LIST 뷰.
CREATE OR REPLACE VIEW VW_STUDY_CONTENTS_LIST AS
    SELECT cor.CODE AS CO_CODE, cor.NAME AS CO_NAME, cat.CODE AS CA_CODE, cat.NAME AS CA_NAME, 
        sub.CODE AS SUB_CODE, sub.NAME AS SUB_NAME, stu.CODE, stu.TITLE, stu.IMPORTANCE, stu.REG_DATE, qcnt.Q_COUNT 
    FROM STUDY_CONTENTS stu, (SELECT stu.code as STU_CODE, COUNT(vql.CODE) as Q_COUNT
        FROM STUDY_CONTENTS stu LEFT OUTER JOIN VW_QUESTION_LIST vql ON stu.CODE = vql.STU_CODE
        GROUP BY stu.code) qcnt, SUB_CATEGORY sub, CATEGORY cat, COURSE cor
    WHERE stu.CODE = qcnt.STU_CODE
        AND stu.SUB_CODE = sub.CODE
        AND sub.CA_CODE = cat.CODE 
        AND cat.CO_CODE = cor.CODE;
        
--- VW_STUDY_LOG_CALCULATION 뷰.
CREATE OR REPLACE VIEW VW_STUDY_LOG_CALCULATION AS
    SELECT vsc.CO_CODE, vsc.CO_NAME, stl.STU_CODE, vsc.TITLE, stl.MEM_ID, COUNT(*) AS STU_COUNT , TRUNC((SYSDATE - MAX(stl.REG_DATE))*(60*60)) AS ELAPSED_TIME,  MAX(stl.REG_DATE) AS REG_DATE
    FROM STUDY_LOG stl, VW_STUDY_CONTENTS_LIST vsc
    WHERE stl.STU_CODE = vsc.CODE
        AND stl.COMPLETED='O'
    GROUP BY vsc.CO_CODE, vsc.CO_NAME, stl.STU_CODE, vsc.TITLE, stl.MEM_ID
    ORDER BY ELAPSED_TIME;
        
--재만 : VW_QNA_QUESTION_LIST 뷰
CREATE VIEW VW_QNA_QUESTION_LIST AS
    SELECT NO,QNA_TYPE,TITLE,COMMENT_NO,USER_ID, REG_DATE, COUNT
    FROM QNA_QUESTION;

------------------------------------------------ 시퀀스 생성 -------------------------------------------------- 
--재만 : SEQ_COMMENT_NO 시퀀스
CREATE SEQUENCE SEQ_COMMENT_NO
INCREMENT BY 1
START WITH 1 
MINVALUE 0
MAXVALUE 2000000000;

--재만 : SEQ_QUESTION_NO 시퀀스
CREATE SEQUENCE SEQ_QUESTION_NO
INCREMENT BY 1
START WITH 1 
MINVALUE 0
MAXVALUE 2000000000;

------------------------------------------ 테이블 수정을 돕기 위한 삭제문 --------------------------------------------------  

DROP TABLE MEMBER;
DROP TABLE MANAGER;
DROP TABLE COURSE;
DROP TABLE CATEGORY;
DROP TABLE SUB_CATEGORY;
DROP TABLE STUDY_CONTENTS;
DROP TABLE S_QUESTION;
DROP TABLE M_QUESTION;
DROP TABLE M_ANSWER;
DROP TABLE MY_COURSE;
DROP TABLE STUDY_LOG;
DROP VIEW VW_QUESTION_LIST;
DROP VIEW VW_STUDY_CONTENTS_LIST;
DROP VIEW VW_SEARCH_CATEGORY;

DROP TABLE QNA_COMMENT;
DROP TABLE QNA_QUESTION;
DROP SEQUENCE SEQ_COMMENT_NO;
DROP SEQUENCE SEQ_QUESTION_NO;
DROP VIEW VW_QNA_QUESTION_LIST;

-- --------------------------------------------------- 쿼리 조회 연습 -----------------------------------------------------
-- 시간 출력
SELECT TO_CHAR(REG_DATE, 'HH24:MI:SS')
FROM STUDY_CONTENTS;   

-- 아우터 조인   
SELECT stu.code, COUNT(vql.CODE)
FROM STUDY_CONTENTS stu LEFT OUTER JOIN VW_QUESTION_LIST vql ON stu.CODE = vql.STU_CODE
GROUP BY stu.code;

-- 내일 할일 ... (page에 해당하는 tab 메뉴가 sidebar에서 선택되도록 하기!!), 다음 학습이 없을경우 학습 커서를 앞으로 보내주는 로직 추가. 문제풀기 페이지 구성

-- 학습하기에서 기억률 계산 후 출력 완료.
-- 맞춘 문제는 다시 입력하지 않도록 함. UI 도 수정
-- home 화면 구조 완성

commit;


