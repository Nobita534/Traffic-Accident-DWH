{{ config(materialized='table') }}

WITH unique_devices AS (
    SELECT DISTINCT
        traffic_control_device,
        trafficway_type
    FROM {{ ref('int_traffic_accidents') }}
)

SELECT
    MD5(CONCAT_WS(
        '||',
        COALESCE(traffic_control_device, '<NULL>'),
        COALESCE(trafficway_type, '<NULL>')
    )) AS device_id,
    traffic_control_device,
    trafficway_type
FROM unique_devices