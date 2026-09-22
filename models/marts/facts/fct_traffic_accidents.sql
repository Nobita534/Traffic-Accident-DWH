{{ config(materialized='table') }}

WITH int_data AS (
    SELECT * FROM {{ ref('int_traffic_accidents') }}
),

dim_natural AS (SELECT * FROM {{ ref('dim_natural_condition') }}),
dim_cause AS (SELECT * FROM {{ ref('dim_cause') }}),
dim_type AS (SELECT * FROM {{ ref('dim_crash_type') }}),
dim_device AS (SELECT * FROM {{ ref('dim_traffic_device') }})

SELECT
    (
        ('x' || SUBSTR(
            MD5(CONCAT_WS(
                '||',
                COALESCE(i.crash_timestamp::text, '<NULL>'),
                COALESCE(i.traffic_control_device, '<NULL>'),
                COALESCE(i.weather_condition, '<NULL>'),
                COALESCE(i.lighting_condition, '<NULL>'),
                COALESCE(i.first_crash_type, '<NULL>'),
                COALESCE(i.trafficway_type, '<NULL>'),
                COALESCE(i.alignment, '<NULL>'),
                COALESCE(i.roadway_surface_cond, '<NULL>'),
                COALESCE(i.crash_type, '<NULL>'),
                COALESCE(i.damage, '<NULL>'),
                COALESCE(i.prim_contributory_cause, '<NULL>'),
                COALESCE(i.most_severe_injury, '<NULL>'),
                COALESCE(i.intersection_related_i_raw, '<NULL>'),
                COALESCE(i.num_units::text, '<NULL>'),
                COALESCE(i.injuries_total::text, '<NULL>'),
                COALESCE(i.injuries_fatal::text, '<NULL>'),
                COALESCE(i.injuries_incapacitating::text, '<NULL>'),
                COALESCE(i.injuries_non_incapacitating::text, '<NULL>'),
                COALESCE(i.injuries_reported_not_evident::text, '<NULL>'),
                COALESCE(i.injuries_no_indication::text, '<NULL>'),
                COALESCE(i.crash_hour::text, '<NULL>'),
                COALESCE(i.crash_day_of_week::text, '<NULL>'),
                COALESCE(i.crash_month::text, '<NULL>'),
                COALESCE(i.crash_year::text, '<NULL>')
            )),
            1,
            16
        ))::bit(64)::bigint
    ) AS fact_id,
    
    -- Các Khóa ngoại (Foreign Keys) liên kết dạng số nguyên
    n.natural_id,
    t.crash_id,
    c.cause_id,
    d.device_id,
    i.datekey,
    
    -- Đẩy trường giờ về bảng Fact làm thuộc tính số nguyên để tăng tốc truy vấn phân phối
    i.crash_hour,
    
    -- Các thước đo định lượng (Measures) và thuộc tính phụ trợ
    i.damage,
    i.num_units,
    i.most_severe_injury,
    i.injuries_total,
    i.injuries_fatal,
    i.injuries_incapacitating,
    i.injuries_non_incapacitating,
    i.injuries_reported_not_evident,
    i.injuries_no_indication,
    
    -- Khối chỉ số nghiệp vụ đã hạ tầng hóa sẵn
    i.is_severe,
    i.crash_severity_weight

FROM int_data i
LEFT JOIN dim_natural n 
    ON i.weather_condition = n.weather_condition 
    AND i.lighting_condition = n.lighting_condition 
    AND i.roadway_surface_cond = n.roadway_surface_cond
LEFT JOIN dim_cause c 
    ON i.prim_contributory_cause = c.primary_cause
LEFT JOIN dim_type t 
    ON i.first_crash_type = t.first_crash_type 
    AND i.alignment = t.alignment 
    AND i.crash_type = t.crash_type 
    AND i.intersection_related_i = t.intersection_related_i
LEFT JOIN dim_device d 
    ON i.traffic_control_device = d.traffic_control_device 
    AND i.trafficway_type = d.trafficway_type