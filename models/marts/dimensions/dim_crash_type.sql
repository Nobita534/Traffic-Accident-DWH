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
    MD5(CONCAT_WS(
        '||',
        COALESCE(first_crash_type, '<NULL>'),
        COALESCE(alignment, '<NULL>'),
        COALESCE(crash_type, '<NULL>'),
        COALESCE(intersection_related_i::text, '<NULL>')
    )) AS crash_id,
    first_crash_type,
    alignment,
    crash_type,
    intersection_related_i
FROM unique_types