
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select cause_id as from_field
    from "traffic_dwh"."public"."fct_traffic_accidents"
    where cause_id is not null
),

parent as (
    select cause_id as to_field
    from "traffic_dwh"."public"."dim_cause"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test