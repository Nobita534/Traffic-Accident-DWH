
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select crash_timestamp
from "traffic_dwh"."public"."stg_traffic_accidents"
where crash_timestamp is null



  
  
      
    ) dbt_internal_test