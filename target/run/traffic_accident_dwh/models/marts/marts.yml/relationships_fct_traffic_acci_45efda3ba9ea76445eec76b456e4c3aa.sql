
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select natural_id as from_field
    from "traffic_dwh"."public"."fct_traffic_accidents"
    where natural_id is not null
),

parent as (
    select natural_id as to_field
    from "traffic_dwh"."public"."dim_natural_condition"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test