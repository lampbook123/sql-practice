# Write your MySQL mry stats
select round(sum(case when a2.event_date is not null then 1 else 0 end )
/ count( distinct a1.player_id), 2 ) as fraction 
from ( select player_id , min(event_date) as first_login
from Activity
group by player_id)as a1
left join Activity a2
on a1.player_id =  a2.player_id
and a2.event_date = date_add(a1. first_login , interval 1 day);

