# Write your MySQL query statement bel
select a.project_id , round(avg(b.experience_years),2) as average_years 
from Project as a
left join Employee as b
on a.employee_id = b.employee_id
group by project_id
order by project_id
;
