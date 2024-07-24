SHOW USER;

-- �����ͺ��̽����� ��ɹ� ������ ����� �� ctrl+enter
SELECT * FROM employees;
-- sql�� ��/�ҹ��ڸ� �������� �ʴ´�. �ٸ�, ���������� Ű����� �빮�ڷ�, �ĺ��ڴ� �ҹ��ڷ� �ۼ��Ѵ�.
-- NULL ���� ���� 0�̳� ������� �ٸ� �����.
-- NULL�� ���� ���� ��, �׷��� ������ �� �� ����.

-- �÷��� AS ��Ī --> ������ �÷��� ���, �����Ͽ� ��ȸ�� (������) ����� AS ��Ī�� ����ϸ� ����.
-- ���� �ƴϸ� ���� ������ �������� ����. ���ڿ��� �����ϰ� �ʹٸ� ||(or��ȣ)�� ����Ѵ�.
-- oracle������ ���ڿ� ��ȣ�� ''(Ȭ����ǥ)��ȣ�� ǥ���Ѵ�.
SELECT
first_name || ' ' || last_name AS full_name
FROM employees;

SELECT
    first_name || ' ' || last_name || '''s salary is $' || salary AS �޿�����
FROM employees;

-- DISTINCT(�ߺ� ���� ����)
-- 1. FROM employees --> employess ���̺���
-- 2. SELECT department_id --> �μ����� ��ȸ�� �ǵ�
-- 3. DISTINCT --> �ߺ� ���� ��� ��������
SELECT count(*) AS �μ���
FROM (SELECT DISTINCT department_id FROM employees);

-- **ROWNUM --> ������ ���� �� ��ȣ�� ��ȯ --> ����¡�� �� �����ϰ� ����,
-- ROWID--> �����ͺ��̽� ���� ���� �ּҸ� ��ȯ
SELECT ROWNUM, ROWID, employee_id
FROM employees;