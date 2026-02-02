# Write your MySQL query statement below
select e.name as Employee ,e.Salary as Salary ,
 d.name as department from Employee as e
 join Department as d
on e.departmentId = d.id 
Join (
select  departmentId , max(Salary ) as max_salary  
 from Employee 
Group by departmentId) m
on e.departmentId = m.departmentId
and e.Salary = m.max_Salary;  

 
