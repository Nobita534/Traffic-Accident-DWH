
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select crash_date
from "traffic_dwh"."public"."raw_traffic_accidents"
where crash_date is null



  
  
      
    ) dbt_internal_test