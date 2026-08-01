
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    natural_id as unique_field,
    count(*) as n_records

from "traffic_dwh"."public"."dim_natural_condition"
where natural_id is not null
group by natural_id
having count(*) > 1



  
  
      
    ) dbt_internal_test