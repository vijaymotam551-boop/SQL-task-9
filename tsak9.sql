use d11;
select * from employees;
alter table employees rename to emp;
select * from emp;
drop table employees;
alter table emp rename to employees;
select * from employees;


-- 1
-- display employees who earn more than 50000 salary.
select * from employees where salary>50000;

-- 2
-- show employees who earn less than 40000 salary.
select * from employees where salary < 40000;

-- 3
-- find employees whose salary is at least 60000.
select * from employees where salary >=60000;

-- 4
-- display employees who are not 30 years old.
select * from employees where age!=30;

-- 5
-- find employees whose salary falls between 40000 and 70000.
select * from employees where salary between 40000 and 70000;

-- 6
-- display employees who work in either it department or hr department.
select * from employees where department in ('IT','HR');

-- 7
-- find employees who work in it department and earn more than 50000.
select * from employees where department='IT' and salary>50000; 

-- 8
-- display employees whose age is above 25 but below 35.
select * from employees where age >25<35;

-- 9
-- find employees who do not belong to finance department.
select * from employees where department!='finance';
select * from employees;

-- 10
-- display employees whose salary matches any of these values: 40000, 50000, 60000.
select * from employees where salary in (40000,50000,60000);

-- 11
-- find employees whose salary is not among these values: 30000 or 35000.
select * from employees where salary not in (30000,35000);

-- 12
-- display employees whose name begins with the letter a.
select * from employees where name like 'a%';

-- 13
-- find employees whose name ends with the letter n.
select * from employees where name like '%n';

-- 14
-- display employees whose email address contains the word gmail.
select * from employees where email like '%gmail%';

-- 15
-- find employees who earn more than 50000 and belong to either it or hr department.
select * from employees where salary >50000 and department in ('IT','HR');

-- 16
-- display employees whose name starts with the letter s and ends with the letter h.
select * from employees where name like 's%h';

-- 17
-- find employees whose name has exactly five characters.
select * from employees where name like '_____';

-- 18
-- display employees whose email starts with the letter r and contains gmail.
select * from employees where email like 'r%gmail%';

-- 19
-- find employees whose name has the letter a as the second character.
select * from employees where name like '_a%';
select * from employees;

-- 20
-- display employees whose name starts with p and has exactly four characters.
select * from employees where name like 'p___';
select * from employees;

-- 21
-- add a new column called phone_number to the employees table.
alter table employees add phone_number varchar(15);
select* from employees;

-- 22
-- add two columns called location and experience to the employees table.
alter table employees add location varchar(50),add experience int; 

-- 23
-- change the datatype of the salary column so that it can store larger numbers.
alter table employees 
modify salary bigint;
select * from employees;

-- 24
-- increase the maximum length of the department column.
alter table employees 
modify department varchar(100);

-- 25
-- rename the column name to employee_name.
alter table employees
rename column name to employee_name;

-- 26
-- rename the table employees to company_employees.
rename table employees to emp; 

-- 27
alter table emp
drop column experience;
use d11;
select * from emp;

-- 28
-- update the salary of the employee whose emp_id is 3 to 70000.
update emp
set salary=70000
where emp_id = 3;

-- 29
-- change the department of the employee whose emp_id is 5 to it.
update emp
set department='IT'
where emp_id=5;

-- 30
-- increase the salary of employees working in the it department by 5000.
UPDATE emp
SET salary = salary + 5000
WHERE department = 'IT';

-- 31
-- display employees whose name starts with the letter a and whose salary is greater than 45000.
select * from emp 
where employee_name like 'a%' and salary>45000;

-- 32
-- find employees whose department is hr and whose age is greater than 25.
select * from emp 
where department='HR' and age>25;

-- 33
-- display employees whose email ends with gmail.com and whose salary is more than 50000.
select * from emp
where email like '%gmail.com' and salary >50000;

-- 34
-- find employees whose name contains the letter r anywhere in the name.
select * from emp
where employee_name like '%r%';

-- 35
-- display employees whose name starts with m and whose age is less than 30.
select * from emp
where employee_name like 'm%' and age <30;

-- 36
-- find employees whose name has exactly six characters.
select*from emp
where employee_name like '______';

-- 37
-- display employees whose email contains the word company.
select * from emp
where email like'%company%';

-- 38
-- update the salary of employees who are older than 30 to 65000.
update emp
set salary = 65000
where age>30;
select * from emp;

-- 39
-- update the department to finance for employees whose salary is less than 40000.
update emp
set department='finance'
where salary <40000;
select * from emp;

-- 40
-- display employees whose department is it and whose salary is greater than 55000 and whose age is greater than 25.
select * from emp 
where department='IT' and salary >55000 and age >25;

