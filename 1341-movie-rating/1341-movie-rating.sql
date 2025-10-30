# Write your MySQL query statement below
( select  a.name as results from Users a
    join MovieRating c on c.user_id = a.user_id   #using join to get greatest movie rating
    group by a.name , a.user_id
    order by  count(* ) desc  , a.name asc
    limit 1)
 
 union all
 
 (select b.title as results from Movies b
  join MovieRating c on 
  c.movie_id = b.movie_id                  # movie with highest rating in feb 2020 
  

where c.created_at
  >= '2020-02-01' and c.created_at <'2020-03-01' 
group by b.title , b.movie_id
order by avg(c.rating )  desc , b.title asc
limit  1);

