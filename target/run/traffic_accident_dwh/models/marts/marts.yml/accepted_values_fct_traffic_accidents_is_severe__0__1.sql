
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        is_severe as value_field,
        count(*) as n_records

    from "traffic_dwh"."public"."fct_traffic_accidents"
    group by is_severe

)

select *
from all_values
where value_field not in (
    '0','1'
)



  
  
      
    ) dbt_internal_test