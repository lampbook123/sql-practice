# Write your MySQL query statement below
select id  , movie , description , rating from Cinema
where (id %2 = 1) and description != "boring"
group by rating 
order by rating desc;