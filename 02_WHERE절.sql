-- 데이터는 대/소문자를 구분한다.
SELECT first_name, last_name, job_id
FROM employees
-- 만약 WHERE job_id = 'it_prog';라고 입력시 조회결과는 없다.
-- 에러가 아니라 데이터 값은 대/소문자를 구별하기 때문에
-- job_id 컬럼에 'it_prog'이 데이터를 가진 행이 존재하지 않는다는 것을 의미
WHERE job_id = 'IT_PROG';

--조회 결과
--Alexander	Hunold	IT_PROG
--Bruce	Ernst	IT_PROG
--David	Austin	IT_PROG
--Valli	Pataballa	IT_PROG
--Diana	Lorentz	IT_PROG