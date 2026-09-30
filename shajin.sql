-- create database employee2;
-- use new;
-- create table employee2(
-- id int,
-- name varchar (50),
-- department varchar(20),
-- salary int,
-- city varchar(10));
-- select* from employee2;
-- insert into employee2(id,name,department,salary,city)
-- values
-- (1,'anu', 'hr', 2000, 'tvm'),
-- (2, 'krish', 'it', 4000, 'klm'),
-- (3, 'ambu', 'dm', 3000, 'msl');
-- select* from employee2;
-- update employee2
-- set department ='hod'
-- where id ='3';
-- select* from employee2;
-- delete from  employee2
-- where id ='2';


create database staff1;
use staff1;
create table student1(
id int,
name varchar(20),
department varchar(30),
salary int,
city varchar(20));
select*from student1;
insert into student1(id,name,department,salary,city)
values
(1,'anu','hr',2000,'tvm'),
(2,'krish','it',4000,'klm'),
(3,'ambu','dm',3000,'msl'),
(4,'paru','hr',6000,'pkd'),
(5,'akhil','it',7000,'mlp'),
(6,'ammu','hr',5000,'klm');
select *from student1;

SELECT *
FROM student1
WHERE department = 'hr'
  AND salary > 2000;
SELECT * FROM student1
WHERE department = 'it'
OR department = 'dm';
SELECT * FROM student1
WHERE department = 'hr'
AND (salary>5000 or id>3);


create database office1;
use new;
create table staff(
id int,
name varchar(25),
department varchar(30),
salary int,
age varchar(25));
select * from staff;
insert into staff(id,name,department,salary,age)
values
(1,'anu','hr',2000,'30'),
(2,'krish','it',4000,'43'),
(3,'ambu','dm',3000,'40'),
(4,'paru','hr',6000,'20'),
(5,'akhil','it',7000,'42'),
(6,'ammu','hr',5000,'41');
select * from staff;
select * from staff
where department = 'hr';
select * from staff
where age<> 30;
select * from staff
where salary > 5000;
select * from staff
where age<25;
select * from staff
where age >= 40;
select * from staff
where age <= 40;
select * from staff
where age between 30 AND 40;
select * from staff
where department IN('salary','age');
select * from staff where
department NOT IN ('HR','admin');
select * from staff
where  salary is Null; 



SELECT CONCAT('Data', '', 'science')As Result;
SELECT LENGTH('Datascience')As string;
SELECT UPPER('datascience') As uppercasetext;
SELECT LOWER('Data Science')As Lowercasetext;
SELECT SUBSTRING('Datascience', 1,4)
As Extractedtext;
SELECT REPLACE('Data Science', 'Science', 'Analytics')As newtext;
SELECT NOW() As current_Date_Time;
SELECT DATE('2026-8-10, 12:15:20')
As Dateonly;
SELECT year('2026-8-20')As yearExtracted;
SELECT MONTH('2026-8-15')As Monthnumber;

SELECT DATEDIFF('2026-9-28','2025-9-25')As DaysDifference;




create database student2;
use new;
create table  employee1(
id int,
name varchar(20),
department varchar(15),
salary varchar(20));
select * from employee1;
insert into employee1(id,name,department,salary)
values
(1,'Akhil','HR',50000),
(2,'Ammu','IT',70000),
(3,'Paru','HR',60000),
(4,'Krish','IT',80000),
(5,'Ambu','Sales',55000);
select * from employee1;
select department,COUNT(*)As count
from employee1
GROUP BY department;
select department,SUM(Salary)As total_Salary
from employee1
GROUP BY department;
select department,AVG(Salary)As avg_Salary
from employee1
GROUP BY department;
select department,COUNT(*)As employee1_count
from employee1
GROUP BY department
HAVING COUNT(*) >1;



create database staff3;
use staff3;
create table course2(
id int,
name varchar(50),
course_id int);
select * from course2;
insert into course2(id,name,course_id)
values
(1,'Anjali',101),
(2,'Rahul',102),
(3,'Neha',105);
select * from course2;
create table course3(
course_id int,
course_name varchar(50));
select * from course3;
insert into course3(course_id,course_name)
values
(101,'python'),
(102,'web dev'),
(103,'Data science');
select * from course3;
select course2.name,course3.course_name
from course2
inner join course3
ON course2.course_id=course3.course_id;
select course2.name,course3.course_name
from course2
left join course3
ON course2.course_id=course3.course_id;
select course2.name,course3.course_name
from course2
right join course3
ON course2.course_id=course3.course_id;
select course2.name,course3.course_name
from course2
left join  course3
ON course2.course_id=course3.course_id
union
select course2.name,course3.course_name
from course2
right join course3
ON course2.course_id=course3.course_id;
select * from course2 s cross join course3;



create database staff10;
use staff10;
create table worker11(
id INT primary key,
first_name varchar(300),
last_name varchar(200),
salary INT,
joining_date DATETIME,
department varchar(100));
select * from worker11;
insert into worker11(id,first_name,last_name,salary,joining_date,department)
values
(1,'Monika','Arora',100000, '2014-02-20 9:00:00','HR'),
(2,'Niharika','Verma',80000, '2014-06-11 9:00:00','Admin'),
(3,'Vishal','Singhal',300000, '2014-02-20 9:00:00','HR'),
(4,'Amitabh','Singh',500000, '2014-02-20 9:00:00','Admin'),
(5,'Vivek','Bhati',500000, '2014-6-11 9:00:00','Admin'),
(6,'Vipul','Diwan',200000, '2014-6-11 9:00:00','Account'),
(7,'Satish','Kumar',75000, '2014-1-20 9:00:00','Account'),
(8,'Geetika','Chauham',90000, '2014-4-11 9:00:00','Admin');
select * from worker11;
create table worker29(
worker_ref_id INT,
Bonus_date DATETIME,
Bonus_amount INT
);
select * from worker29;
insert into worker29(worker_ref_id,Bonus_date,Bonus_amount)
values
(1,'2016-2-20',5000),
(2,'2016-6-11',3000),
(3,'2016-2-20',4000),
(1,'2016-2-20',4500),
(2,'2016-6-11',3500);
select * from worker29;
create table worker32(
worker_ref_id INT,
worker_title varchar(200),
affected_from DATETIME);
select * from worker32;
insert into worker32(worker_ref_id,worker_title,affected_from)
values
(1,'manger','2016:2:20'),
(2,'executive','2016:6:11'),
(3,'executive','2016:6:11'),
(4,'executive','2016:6:11'),
(5,'manger','2016:6:11'),
(6,'asst.manger','2016:6:11'),
(7,'executive','2016:6:11'),
(8,'lead','2016:6:11'),
(9,'lead','2016:6:11');
select * from worker32;
select  upper('FIRST_NAME')As uppercasetext;

select department,COUNT(*)As count
from worker10
where department='admin'
Group by department;

select FIRST_NAME As WORKER_NAME
from worker9 As alias_table;

select department,COUNT(*)As 
NO_OF_WORKERS
from worker9
group by department
order by NO_OF_WORKERS DESC; 

select Distinct department
from worker9;

select substring(FIRST_NAME,1.3)As
FIRST_THREE_CHARACTERS
from worker9;

select INSTR(first_name,'a')As position
from worker9
where first_name ='Amitabh';

select RTRIM(FIRST_NAME)As FIRST_NAME
from worker9;

 select LTRIM(DEPARTMENT)As DEPARTMENT
 from worker9;
 
 select Distinct department,LENGTH(department)As department_length
 from worker9;
 
 select Replace(first_name,'a','A')As first_name
 from worker9;
 
 select Concat(first_name,'',last_name)As COMPLETE_NAME
 from worker9;
 
 select *
 from worker9
 where first_name IN('Vipul' ,'Satish');
 
select *
from worker9
where first_name NOT IN('vipul','Satish');

select *
from worker9
where department = 'Admin';

SELECT *
FROM worker9
WHERE first_name LIKE '%a%';

select * 
from worker10
where first_name LIKE '%a';

select *
from worker10
where first_name LIKE '____h';

select *
from worker10
where salary between 100000 and 500000;

select *
from worker10
where joining_date >= '2014-2-1'
      AND joining_date < '2014-3-1';
      
select first_name
from worker10
where salary between 50000 and 100000;   

select *
from worker31
where worker_title = 'Manager';

select *
from worker10
where(FIRST_NAME, SALARY)IN (
      select FIRST_NAME, SALARY
      from worker10
     GROUP BY FIRST_NAME,SALARY
      HAVING COUNT(*) > 1
);
select *
from worker11
where id % 2 = 1;

select *
from worker11
where id % 2 = 0;


CREATE TABLE worker_id  As
select *
from worker11;

SELECT id
FROM worker11
WHERE id IN (
    SELECT id
    FROM worker_clone
);

SELECT id
FROM worker11
WHERE id NOT IN (
    SELECT id
    FROM worker_clone
);

select NOW() As current_date_time;

select *
from worker11
LIMIT 10;

select distinct salary
from worker11
order by salary DESC
LIMIT 1 OFFSET 4;

SELECT salary
FROM worker11 w1
WHERE 4 = (
    SELECT COUNT(DISTINCT salary)
    FROM worker11 w2
    WHERE w2. salary >w1.salary
);

 select salary,COUNT(*)As  employee_count
 from worker11
 group by salary
 Having count(*) >1;
 
 select MAX(salary)As second_highest_salary
 from worker11
 where salary <(
              select MAX(salary)
              from worker11
);

select *
from worker11
where id = 1

UNION ALL

select *
from worker11
where id =1;

SELECT w1.*
FROM worker11 w1
INNER JOIN worker_clone w2
ON w1.id = w2.id;

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY id) AS rn,
           COUNT(*) OVER () AS total_rows
    FROM worker11
) AS t
WHERE rn <= total_rows / 2;

SELECT department, COUNT(*) AS employee_count
FROM worker11
GROUP BY department
HAVING COUNT(*) > 5;

select department,COUNT(*)As employee_count
from worker11
group by department;

 select *
from worker11
order by id DESC
LIMIT 1;

 select *
from worker11
order by id ASC
LIMIT 1;

 select *
from worker11
order by id DESC
LIMIT 5;

SELECT first_name, last_name, department, salary
FROM worker11 w1
WHERE salary = (
    SELECT MAX(salary)
    FROM worker11 w2
    WHERE w2.department = w1.department
);

SELECT DISTINCT salary
FROM worker11
ORDER BY salary ASC
LIMIT 3;

SELECT salary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM worker11
) AS ranked
WHERE salary_rank = 5;

SELECT first_name, last_name, salary
FROM worker11;

SELECT first_name, last_name, salary
FROM worker11
WHERE salary = (
    SELECT MAX(salary)
    FROM worker11
);




































 



































