CREATE TABLE "MY_COURSE"(
    "CO_CODE" CHAR(3),
    "MEM_ID" VARCHAR2(50),
    "PLAN" NUMBER(1), -- 0 (����ȹ) / 1 (��ȹ)
    "RANGE" NUMBER(1), -- 1 (�߿䵵 A�� �н�), 2 (�߿䵵 B���� �н�), 3 ( �߿��� �� ���� �н�), 4 ( �������� ���� �н� ) 
    "DAYS" NUMERIC,
    "START_DATE" DATE,
    "END_DATE" DATE,
    PRIMARY KEY (CO_CODE, MEM_ID), 
    FOREIGN KEY (CO_CODE) REFERENCES "COURSE"(CODE),
    FOREIGN KEY (MEM_ID) REFERENCES "MEMBER"(ID)
);

DROP TABLE MY_COURSE;