

WITH unique_conditions AS (
    SELECT DISTINCT
        weather_condition,
        lighting_condition,
        roadway_surface_cond
    FROM "traffic_dwh"."public"."int_traffic_accidents"
)

SELECT
    ROW_NUMBER() OVER (ORDER BY weather_condition) AS natural_id,
    weather_condition,
    lighting_condition,
    roadway_surface_cond
FROM unique_conditions