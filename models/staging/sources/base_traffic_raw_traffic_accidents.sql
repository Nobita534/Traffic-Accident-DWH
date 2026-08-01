with source as (
        select * from {{ source('traffic', 'raw_traffic_accidents') }}
  ),
  renamed as (
      select
          

      from source
  )
  select * from renamed
    