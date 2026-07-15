

WITH staging_data AS (
    SELECT * FROM "traffic_dwh"."public"."stg_traffic_accidents"
)

SELECT
    *,
    
    -- 1. Xử lý ép kiểu dữ liệu chuỗi Y/N sang Boolean thật sự cho trường giao lộ
    CASE 
        WHEN intersection_related_i_raw = 'Y' THEN true 
        ELSE false
    END AS intersection_related_i,
    
    -- 2. Hạ tầng hóa (Materialize) hệ thống trọng số điểm phạt theo chuẩn EPDO (12 - 3 - 1)
    CASE 
        WHEN injuries_fatal > 0 THEN 12
        WHEN injuries_fatal = 0 AND (injuries_incapacitating > 0 OR injuries_non_incapacitating > 0 OR injuries_reported_not_evident > 0) THEN 3
        ELSE 1
    END AS epdo_priority_score,
    
    -- 4. Tự động sinh khóa thời gian datekey dạng số tự tăng (YYYYMMDD) để chuẩn bị làm khóa nối sang Dim_Date
    CAST(TO_CHAR(crash_timestamp, 'YYYYMMDD') AS INTEGER) AS datekey

FROM staging_data