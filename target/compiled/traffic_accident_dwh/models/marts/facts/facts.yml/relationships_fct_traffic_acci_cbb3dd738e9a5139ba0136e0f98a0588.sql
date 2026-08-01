
    
    

with child as (
    select crash_id as from_field
    from "traffic_dwh"."public"."fct_traffic_accidents"
    where crash_id is not null
),

parent as (
    select crash_id as to_field
    from "traffic_dwh"."public"."dim_crash_type"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


