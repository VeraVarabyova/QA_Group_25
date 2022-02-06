-- 1. Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id;

-- 2. Вывести всех работников, у которых ЗП меньше 2000.
select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно, кто её получает.)
select monthly_salary from employees
full join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id
where employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000, но работник по ним не назначен. (ЗП есть, но не понятно, кто её получает.)
select monthly_salary from employees
full join employee_salary on employees.id = employee_salary.employee_id
join salary_ on employee_salary.salary_id = salary_.id
where employee_name is null
and monthly_salary < 2000;

-- 5. Найти всех работников, кому не начислена ЗП.
select employee_name from employees
left join employee_salary on employees.id = employee_salary.employee_id
full join salary_ on employee_salary.salary_id = salary_.id
where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Java %';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Manual%';

-- 11. Вывести имена и должность автоматизаторов QA.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Automation%';

-- 12. Вывести имена и зарплаты Junior специалистов.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Senior%';

-- 15.  Вывести зарплаты Java разработчиков.
select monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Java %';

-- 16. Вывести зарплаты Python разработчиков.
select monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Python%';

-- 17.  Вывести имена и зарплаты Junior Python разработчиков.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Middle%J%S%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков.
select employee_name, monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Senior Java %';

-- 20. Вывести зарплаты Junior QA инженеров.
select monthly_salary
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов.
select AVG(monthly_salary) as AVG_salary_Jun
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков.
select SUM(monthly_salary) as SUM_salary_JS
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%J%S%';

-- 23. Вывести минимальную ЗП QA инженеров.
select MIN(monthly_salary) as MIN_salary_QA
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров.
select MAX(monthly_salary) as MAX_salary_QA
from roles_ r2 
join roles_employee re on r2.id = re.role_id 
join employees e on re.employee_id = e.id
join employee_salary es on e.id = es.employee_id 
join salary_ s on es.salary_id = s.id
where role_name like '%QA%';

-- 25. Вывести количество QA инженеров.
select count(role_name) as count_QA_eng
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(role_name) as count_midddle
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков.
select count(role_name) as count_dev
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where role_name like '%dev%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as sum_salary_dev
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles_ r on re.role_id = r.id 
where role_name like '%dev%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП от 1700 до 2300.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП меньше 2300.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where monthly_salary < 2300
order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП равна 1100, 1500, 2000.
select employee_name, role_name, monthly_salary
from salary_ s 
join employee_salary es on s.id = es.salary_id 
join employees e on es.employee_id = e.id 
join roles_employee re on e.id = re.employee_id 
join roles_ r on re.role_id = r.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;









