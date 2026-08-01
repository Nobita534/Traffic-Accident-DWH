
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select datekey
from "traffic_dwh"."public"."fct_traffic_accidents"
where datekey is null



  
  
      
    ) dbt_internal_test