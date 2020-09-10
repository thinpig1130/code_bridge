CREATE TABLE "MY_COURSE"(
    "CO_CODE" CHAR(3),
    "MEM_ID" VARCHAR2(50),
    "PLAN" NUMBER(1), -- 0 (����ȹ) / 1 (��ȹ)
    "RANGE" NUMBER(1), -- 1 (�߿䵵 A�� �н�), 2 (�߿䵵 B���� �н�), 3 ( �߿��� �� ���� �н�), 4 ( �������� ���� �н� ) 
    "DAYS_PER_WEEK" NUMERIC,
    "APPLY_DATE" DATE,
    "EXPECTED_END_DATE" DATE,
    PRIMARY KEY (CO_CODE, MEM_ID), 
    FOREIGN KEY (CO_CODE) REFERENCES "COURSE"(CODE),
    FOREIGN KEY (MEM_ID) REFERENCES "MEMBER"(ID)
);

DROP TABLE MY_COURSE;

SELECT CEIL(EXPECTED_END_DATE - SYSDATE) AS D_DAYS
FROM MY_COURSE
WHERE CO_CODE="" AND MEM_ID="";

-- �̿ϱ�� �޸�. 
	<select id="searchDDays" parameterType="map" resultMap="result">
		<![CDATA[
		SELECT CEIL(EXPECTED_END_DATE - SYSDATE) AS D_DAYS
		FROM MY_COURSE
		WHERE CO_CODE=#{coCode} AND #{memId}
		]]>
	</select>