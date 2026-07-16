

WITH unique_causes AS (
    SELECT DISTINCT
        prim_contributory_cause AS primary_cause
    FROM "traffic_dwh"."public"."int_traffic_accidents"
)

SELECT
    ROW_NUMBER() OVER (ORDER BY primary_cause) AS cause_id,
    primary_cause
FROM unique_causes