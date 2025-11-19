# Write your MySQL query statement below
select  query_name , round(avg(rating/position) , 2) as quality , round( sum(case  when 
#using average  function to get required coloumn
rating < 3 then 1 else 0 end)/count(*)*100 , 2) as poor_query_percentage  # using round ,sum , case condition to make percenatge coloumn 
 from Queries 
group by query_name;