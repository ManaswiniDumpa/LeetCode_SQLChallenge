
 select request_at as Day,round((sum(case when status like 'cancelled%' then 1 else 0 end)*1.0/count(id)),2) as 'Cancellation Rate'
from trips
where client_id in (select distinct users_id from users where banned='No')
and driver_id in (select distinct users_id from users where banned='No')
and request_at between '2013-10-01' and '2013-10-03'
group by request_at
 










