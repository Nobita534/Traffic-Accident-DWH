
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cause_id
from "traffic_dwh"."public"."dim_cause"
where cause_id is null



  
  
      
    ) dbt_internal_test