
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select is_severe
from "traffic_dwh"."public"."fct_traffic_accidents"
where is_severe is null



  
  
      
    ) dbt_internal_test