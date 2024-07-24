SHOW USER;

-- 데이터베이스에게 명령문 실행을 명령할 때 ctrl+enter
SELECT * FROM employees;
-- sql은 대/소문자를 구분하지 않는다. 다만, 관례적으로 키워드는 대문자로, 식별자는 소문자로 작성한다.
-- NULL 값은 숫자 0이나 공백과는 다른 존재다.
-- NULL은 값이 없는 것, 그래서 연산을 할 수 없다.

-- 컬럼명 AS 별칭 --> 기존의 컬럼을 사용, 연산하여 조회한 (생성된) 결과에 AS 별칭을 사용하면 좋다.
-- 숫자 아니면 덧셈 연산을 지원하지 않음. 문자열을 연결하고 싶다면 ||(or기호)를 사용한다.
-- oracle에서는 문자열 기호를 ''(홑따옴표)기호로 표현한다.
SELECT
first_name || ' ' || last_name AS full_name
FROM employees;

SELECT
    first_name || ' ' || last_name || '''s salary is $' || salary AS 급여내역
FROM employees;

-- DISTINCT(중복 행의 제거)
-- 1. FROM employees --> employess 테이블에서
-- 2. SELECT department_id --> 부서명을 조회할 건데
-- 3. DISTINCT --> 중복 행을 모두 제거해줘
SELECT count(*) AS 부서수
FROM (SELECT DISTINCT department_id FROM employees);

-- **ROWNUM --> 쿼리에 의해 행 번호를 반환 --> 페이징할 때 유용하게 사용됨,
-- ROWID--> 데이터베이스 내의 행의 주소를 반환
SELECT ROWNUM, ROWID, employee_id
FROM employees;