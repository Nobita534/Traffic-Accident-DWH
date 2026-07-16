{{ config(materialized='table') }}

WITH unique_types AS (
    SELECT DISTINCT
        first_crash_type,
        alignment,
        crash_type,
        intersection_related_i
    FROM {{ ref('int_traffic_accidents') }}
)

SELECT
    ROW_NUMBER() OVER (ORDER BY first_crash_type) AS crash_id,
    first_crash_type,
    alignment,
    crash_type,
    intersection_related_i
FROM unique_types