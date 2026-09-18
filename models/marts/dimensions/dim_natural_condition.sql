{{ config(materialized='table') }}

WITH unique_conditions AS (
    SELECT DISTINCT
        weather_condition,
        lighting_condition,
        roadway_surface_cond
    FROM {{ ref('int_traffic_accidents') }}
),

classified_conditions AS (
    SELECT
        weather_condition,
        lighting_condition,
        roadway_surface_cond,
        CASE
            WHEN weather_condition IN ('UNKNOWN', 'OTHER')
              OR lighting_condition IN ('UNKNOWN', 'OTHER')
                THEN 'Unknown / Excluded'
            WHEN weather_condition IN ('CLEAR', 'CLOUDY/OVERCAST')
             AND lighting_condition IN ('DAWN', 'DAYLIGHT', 'DARKNESS, LIGHTED ROAD')
                THEN 'Favorable'
            ELSE 'Adverse'
        END AS condition_group
    FROM unique_conditions
)

SELECT
    ROW_NUMBER() OVER (
        ORDER BY weather_condition, lighting_condition, roadway_surface_cond
    ) AS natural_id,
    weather_condition,
    lighting_condition,
    roadway_surface_cond,
    condition_group,
    CASE
        WHEN condition_group = 'Favorable' THEN TRUE
        WHEN condition_group = 'Adverse' THEN FALSE
        ELSE NULL
    END AS is_favorable_condition
FROM classified_conditions
