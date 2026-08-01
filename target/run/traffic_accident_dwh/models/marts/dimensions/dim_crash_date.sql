
  
    

  create  table "traffic_dwh"."public"."dim_crash_date__dbt_tmp"
  
  
    as
  
  (
    

WITH base_data AS (
    SELECT DISTINCT
        datekey,
        crash_year AS year,
        CASE 
            WHEN crash_month IN (1,2,3) THEN 1
            WHEN crash_month IN (4,5,6) THEN 2
            WHEN crash_month IN (7,8,9) THEN 3
            ELSE 4
        END AS quarter,
        crash_month AS month,
        EXTRACT(DAY FROM crash_timestamp)::INTEGER AS day,
        crash_day_of_week AS dayofweek
    FROM "traffic_dwh"."public"."int_traffic_accidents"
)

SELECT * FROM base_data
  );
  