{{ config(materialized='table') }}

WITH unique_conditions AS (
    SELECT DISTINCT
        weather_condition,
        lighting_condition,
        roadway_surface_cond
    FROM {{ ref('int_traffic_accidents') }}
)

SELECT
    ROW_NUMBER() OVER (
        ORDER BY weather_condition, lighting_condition, roadway_surface_cond
    ) AS natural_id,
    weather_condition,
    lighting_condition,
    roadway_surface_cond,
    CASE
        WHEN weather_condition IN ('UNKNOWN', 'OTHER') THEN NULL
        WHEN weather_condition IN ('CLEAR', 'CLOUDY/OVERCAST')
         AND lighting_condition IN ('DAWN', 'DAYLIGHT', 'DARKNESS, LIGHTED ROAD')
            THEN TRUE
        ELSE FALSE
    END AS is_favorable_condition
FROM unique_conditions
