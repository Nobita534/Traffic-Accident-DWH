
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select crash_hour
from "traffic_dwh"."public"."fct_traffic_accidents"
where crash_hour is null



  
  
      
    ) dbt_internal_test