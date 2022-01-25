-- 1. ������� ������� employees.
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

select * from employees;

-- 2. ��������� ������� employees 70 ��������.
insert into employees(employee_name)
values ('����������'),
       ('������'),
       ('������_1'),
       ('������_2'),
       ('������_3'),
       ('������_4'),
       ('������_5'),
       ('�������'),
       ('�����'),
       ('�����_1'),
       ('�����_2'),
       ('�����_3'),
       ('�����'),
       ('����'),
       ('����_1'),
       ('����_2'),
       ('����_3'),
       ('����_4'),
       ('����_5'),
       ('����_6'),
       ('�������'),
       ('���������'),
       ('�������'),
       ('��������'),
       ('�����'),
       ('�����_1'),
       ('�����_2'),
       ('�����_3'),
       ('�����_4'),
       ('������'),
       ('�����'),
       ('�����'),
       ('�����'),
       ('�����_1'),
       ('�����_2'),
       ('�����_3'),
       ('�����_4'),
       ('�����_5'),
       ('�����_6'),
       ('�����_7'),
       ('��������'),
       ('��������_1'),
       ('��������_2'),
       ('������'),
       ('������'),
       ('������'),
       ('������_1'),
       ('������_2'),
       ('������_3'),
       ('������_4'),
       ('ϸ��'),
       ('��������'),
       ('����'),
       ('���������'),
       ('����������'),
       ('��������'),
       ('�����'),
       ('�����'),
       ('�������'),
       ('�������_1'),
       ('�������_2'),
       ('��������'),
       ('������'),
       ('�����'),
       ('�������'),
       ('��������'),
       ('��������'),
       ('�������'),
       ('���_���������'),
       ('����_Ը���');

      
-- 3. ������� ������� salary_.
create table salary_( 
id serial primary key,
monthly_salary int not null
);

select * from salary_;

-- 4. ��������� ������� salary_ 16 ��������.
insert into salary_(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
      
-- 5. ������� ������� employee_salary.
create table  employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employee_salary;

-- 6. ��������� ������� employee_salary 40 ��������: � 10 ����� �� 40 �������� �������������� employee_id.
insert into employee_salary(employee_id, salary_id)
values (3, 7),
       (1, 4),
       (5, 9),
       (40, 13),
       (23, 4),
       (11, 2),
       (52, 10),
       (15, 13),
       (26, 4),
       (84, 1),
       (33, 7),
       (2, 8),
       (98, 3),
       (6, 6),
       (10, 5),
       (14, 11),
       (22, 12),
       (96, 14),
       (39, 5),
       (61, 15),
       (46, 9),
       (43, 11),
       (51, 16),
       (62, 1),
       (75, 6),
       (57, 10),
       (58, 11),
       (60, 5),
       (93, 4),
       (63, 8),
       (65, 10),
       (66, 14),
       (68, 8),
       (69, 15),
       (72, 2),
       (73, 12),
       (88, 16),
       (91, 12),
       (99, 6),
       (70, 16);
      
      
-- 7. ������� ������� roles_.
create table roles_(
id serial primary key,
role_name int unique not null
);

select * from roles_;

-- 8. �������� ��� ������ role_name � int �� varchar(30).
alter table roles_ 
alter column role_name type varchar(30) using role_name::varchar(30);

-- 9. ��������� ������� roles 20 ��������.
insert into roles_(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

      
-- 10. ������� ������� roles_employee.
create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles_(id)
);

select * from roles_employee;

-- 11. ��������� ������� roles_employee 40 ��������.
insert into roles_employee(employee_id, role_id)
values (7, 2),
       (20, 4),
       (3, 9),
       (5, 13),
       (23, 4),
       (11, 2),
       (10, 9),
       (22, 13),
       (21, 3),
       (34, 4),
       (6, 7),
       (9, 1),
       (8, 5),
       (13, 6),
       (17, 10),
       (18, 12),
       (26, 14),
       (28, 11),
       (29, 16),
       (31, 8),
       (36, 11),
       (19, 17),
       (37, 16),
       (40, 3),
       (43, 18),
       (46, 19),
       (48, 20),
       (51, 15),
       (53, 6),
       (58, 10),
       (60, 3),
       (62, 8),
       (63, 9),
       (64, 12),
       (65, 13),
       (67, 14),
       (69, 15),
       (35, 1),
       (32, 5),
       (70, 1);
      
      
      
       