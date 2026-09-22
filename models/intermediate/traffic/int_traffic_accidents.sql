{{ config(materialized='view') }}

WITH staging_data AS (
    SELECT DISTINCT * FROM {{ ref('stg_traffic_accidents') }}
)

SELECT
    *,
    -- Preserve the three semantic states of the source indicator:
    -- Y = intersection-related, N = not intersection-related, otherwise unknown.
    CASE
        WHEN intersection_related_i_raw = 'Y' THEN true
        WHEN intersection_related_i_raw = 'N' THEN false
        ELSE NULL
    END AS intersection_related_i,
    
    -- Materialize crash-level severity weight used by the 12-3-1 Severity Index.
    -- The weighting is applied at crash grain: Fatal crash = 12, non-fatal injury crash = 3, PDO/no-injury crash = 1.
    CASE 
        WHEN injuries_fatal > 0 THEN 12
        WHEN injuries_fatal = 0 AND injuries_total > 0 THEN 3
        ELSE 1
    END AS crash_severity_weight,
    
    -- Generate YYYYMMDD date key for the Date Dimension relationship.
    CAST(TO_CHAR(crash_timestamp, 'YYYYMMDD') AS INTEGER) AS datekey

FROM staging_data