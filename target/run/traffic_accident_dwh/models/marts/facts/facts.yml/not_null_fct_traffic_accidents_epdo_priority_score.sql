
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select epdo_priority_score
from "traffic_dwh"."public"."fct_traffic_accidents"
where epdo_priority_score is null



  
  
      
    ) dbt_internal_test