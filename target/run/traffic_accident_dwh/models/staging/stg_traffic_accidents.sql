
  create view "traffic_dwh"."public"."stg_traffic_accidents__dbt_tmp"
    
    
  as (
    

WITH raw_data AS (
    SELECT * FROM "traffic_dwh"."public"."raw_traffic_accidents"
)

SELECT
    
    CAST(crash_date AS TIMESTAMP) AS crash_timestamp,

    CAST(traffic_control_device AS VARCHAR) AS traffic_control_device,
    CAST(weather_condition AS VARCHAR) AS weather_condition,
    CAST(lighting_condition AS VARCHAR) AS lighting_condition,
    CAST(first_crash_type AS VARCHAR) AS first_crash_type,
    CAST(trafficway_type AS VARCHAR) AS trafficway_type,
    CAST(alignment AS VARCHAR) AS alignment,
    CAST(roadway_surface_cond AS VARCHAR) AS roadway_surface_cond,
    CAST(crash_type AS VARCHAR) AS crash_type,
    CAST(damage AS VARCHAR) AS damage,
    CAST(prim_contributory_cause AS VARCHAR) AS prim_contributory_cause,
    CAST(most_severe_injury AS VARCHAR) AS most_severe_injury,

    CAST(intersection_related_i AS VARCHAR) AS intersection_related_i_raw,

    CAST(num_units AS INTEGER) AS num_units,
    CAST(injuries_total AS INTEGER) AS injuries_total,
    CAST(injuries_fatal AS INTEGER) AS injuries_fatal,
    CAST(injuries_incapacitating AS INTEGER) AS injuries_incapacitating,
    CAST(injuries_non_incapacitating AS INTEGER) AS injuries_non_incapacitating,
    CAST(injuries_reported_not_evident AS INTEGER) AS injuries_reported_not_evident,
    CAST(injuries_no_indication AS INTEGER) AS injuries_no_indication,

    CAST(crash_hour AS INTEGER) AS crash_hour,
    CAST(crash_day_of_week AS INTEGER) AS crash_day_of_week,
    CAST(crash_month AS INTEGER) AS crash_month,
    CAST(crash_year AS INTEGER) AS crash_year

FROM raw_data
  );