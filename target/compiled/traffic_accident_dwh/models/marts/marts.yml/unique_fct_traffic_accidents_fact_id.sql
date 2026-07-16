
    
    

select
    fact_id as unique_field,
    count(*) as n_records

from "traffic_dwh"."public"."fct_traffic_accidents"
where fact_id is not null
group by fact_id
having count(*) > 1


