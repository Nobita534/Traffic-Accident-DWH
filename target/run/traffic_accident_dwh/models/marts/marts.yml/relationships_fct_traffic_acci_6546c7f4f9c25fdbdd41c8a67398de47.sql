
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select datekey as from_field
    from "traffic_dwh"."public"."fct_traffic_accidents"
    where datekey is not null
),

parent as (
    select datekey as to_field
    from "traffic_dwh"."public"."dim_crash_date"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test