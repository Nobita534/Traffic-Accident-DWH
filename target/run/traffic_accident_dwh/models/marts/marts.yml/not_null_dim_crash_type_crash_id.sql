
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select crash_id
from "traffic_dwh"."public"."dim_crash_type"
where crash_id is null



  
  
      
    ) dbt_internal_test