
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select device_id
from "traffic_dwh"."public"."fct_traffic_accidents"
where device_id is null



  
  
      
    ) dbt_internal_test