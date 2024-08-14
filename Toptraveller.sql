select distinct u.name,
coalesce(sum(r.distance),0) as travelled_distance
from Users u left join Rides r
on u.id=r.user_id
group by u.id
order by travelled_distance desc,name
