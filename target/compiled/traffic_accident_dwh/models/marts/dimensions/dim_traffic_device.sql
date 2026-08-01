

WITH unique_devices AS (
    SELECT DISTINCT
        traffic_control_device,
        trafficway_type
    FROM "traffic_dwh"."public"."int_traffic_accidents"
)

SELECT
    ROW_NUMBER() OVER (ORDER BY traffic_control_device) AS device_id,
    traffic_control_device,
    trafficway_type
FROM unique_devices