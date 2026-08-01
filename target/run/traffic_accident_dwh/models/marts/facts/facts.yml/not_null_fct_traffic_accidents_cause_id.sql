
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cause_id
from "traffic_dwh"."public"."fct_traffic_accidents"
where cause_id is null



  
  
      
    ) dbt_internal_test