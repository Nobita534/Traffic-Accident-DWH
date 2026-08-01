
  create view "traffic_dwh"."public"."base_traffic_raw_traffic_accidents__dbt_tmp"
    
    
  as (
    with source as (
        select * from "traffic_dwh"."public"."traffic_accidents"
  ),
  renamed as (
      select
          

      from source
  )
  select * from renamed
  );