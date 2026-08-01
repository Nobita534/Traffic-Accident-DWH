
    
    

with child as (
    select device_id as from_field
    from "traffic_dwh"."public"."fct_traffic_accidents"
    where device_id is not null
),

parent as (
    select device_id as to_field
    from "traffic_dwh"."public"."dim_traffic_device"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


