
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select natural_id
from "traffic_dwh"."public"."fct_traffic_accidents"
where natural_id is null



  
  
      
    ) dbt_internal_test