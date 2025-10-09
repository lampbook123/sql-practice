# Write your MySQL query statement below
select  a.user_id , a.join_date ,  ifnull(count(b.order_date) , 0) as orders_in_2019 from Users as a
left join Orders as b
on a.user_id = b.buyer_id
and year(b.order_date) = 2019 
group by a.user_id  , a.join_date; 