-- 1. ������� ���� ����������, ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id;

-- 2. ������� ���� ����������, � ������� �� ������ 2000.
select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� �������, ��� � ��������.)
select monthly_salary from employees
full join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000, �� �������� �� ��� �� ��������. (�� ����, �� �� �������, ��� � ��������.)
select monthly_salary from employees
full join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id
where employee_name is null
and monthly_salary < 2000;

-- 5. ����� ���� ����������, ���� �� ��������� ��.
select employee_name from employees
left join employee_salary on employees.id = employee_salary.employee_id
full join salary_ on employee_salary.salary_id = salary_.id
where monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Java %';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Manual%';

-- 11. ������� ����� � ��������� ��������������� QA.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Automation%';

-- 12. ������� ����� � �������� Junior ������������.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Senior%';

-- 15.  ������� �������� Java �������������.
select monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Java %';

-- 16. ������� �������� Python �������������.
select monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Python%';

-- 17.  ������� ����� � �������� Junior Python �������������.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior Python%';

-- 18. ������� ����� � �������� Middle JS �������������.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Middle%J%S%';

-- 19. ������� ����� � �������� Senior Java �������������.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Senior Java %';

-- 20. ������� �������� Junior QA ���������.
select monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior%QA%';

-- 21. ������� ������� �������� ���� Junior ������������.
select AVG(monthly_salary) as AVG_salary_Jun
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������.
select SUM(monthly_salary) as SUM_salary_JS
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%J%S%';

-- 23. ������� ����������� �� QA ���������.
select MIN(monthly_salary) as MIN_salary_QA
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������.
select MAX(monthly_salary) as MAX_salary_QA
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%QA%';

-- 25. ������� ���������� QA ���������.
select count(role_name) as count_QA_eng
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.
select count(role_name) as count_midddle
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Middle%';

-- 27. ������� ���������� �������������.
select count(role_name) as count_dev
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%dev%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) as sum_salary_dev
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles_ r on re.role_id = r.id 
where role_name like '%dev%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
order by monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������, � ������� �� �� 1700 �� 2300.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������, � ������� �� ������ 2300.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where monthly_salary < 2300
order by monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������, � ������� �� ����� 1100, 1500, 2000.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;









