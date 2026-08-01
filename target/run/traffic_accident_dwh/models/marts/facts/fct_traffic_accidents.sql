
  
    

  create  table "traffic_dwh"."public"."fct_traffic_accidents__dbt_tmp"
  
  
    as
  
  (
    

WITH int_data AS (
    SELECT * FROM "traffic_dwh"."public"."int_traffic_accidents"
),

dim_natural AS (SELECT * FROM "traffic_dwh"."public"."dim_natural_condition"),
dim_cause AS (SELECT * FROM "traffic_dwh"."public"."dim_cause"),
dim_type AS (SELECT * FROM "traffic_dwh"."public"."dim_crash_type"),
dim_device AS (SELECT * FROM "traffic_dwh"."public"."dim_traffic_device")

SELECT
    ROW_NUMBER() OVER (ORDER BY i.crash_timestamp) AS fact_id,
    
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
    i.epdo_priority_score

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
  );
  