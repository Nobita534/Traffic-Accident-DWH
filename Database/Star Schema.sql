-- -----------------------------------------------------
-- 1. TẠO CÁC BẢNG DIMENSION (DIM)
-- -----------------------------------------------------

-- Tạo bảng Dim_Natural_condition
CREATE TABLE Dim_Natural_condition (
    Natural_Condition_id INT PRIMARY KEY,
    Weather_Condition VARCHAR(255),
    Lighting_Condition VARCHAR(255),
    Roadway_surface_cond VARCHAR(255)
);

-- Tạo bảng Dim_Traffic_condition
CREATE TABLE Dim_Traffic_condition (
    Traffic_Condition_id INT PRIMARY KEY,
    Traffic_control_device VARCHAR(255),
    Trafficway_type VARCHAR(255),
    Alignment VARCHAR(255),
    Intersection_related_i VARCHAR(255)
);

-- Tạo bảng Dim_Injury_info
CREATE TABLE Dim_Injury_info (
    Injury_id INT PRIMARY KEY,
    Damage_cat VARCHAR(255),
    Most_severe_injury VARCHAR(255)
);

-- Tạo bảng Dim_Crash_info
CREATE TABLE Dim_Crash_info (
    Crash_id INT PRIMARY KEY,
    First_crash_type VARCHAR(255), -- Lưu ý: Đã sửa lỗi chính tả từ "First_crash_ype" trong ảnh
    Crash_type VARCHAR(255)
);

-- Tạo bảng Dim_Date_of_crash
CREATE TABLE Dim_Date_of_crash (
    Crash_date DATE PRIMARY KEY,
    Crash_hour INT,
    Crash_day_of_week VARCHAR(50),
    Crash_month INT,
    Crash_year INT
);

-- Tạo bảng Dim_Cause
CREATE TABLE Dim_Cause (
    Cause_id INT PRIMARY KEY,
    prim_contributory_cause VARCHAR(255)
);

-- -----------------------------------------------------
-- 2. TẠO BẢNG FACT
-- -----------------------------------------------------

-- Tạo bảng Fact_Accident
CREATE TABLE Fact_Accident (
    Accident_id INT PRIMARY KEY,
    
    -- Foreign Keys
    Natural_Condition_id INT,
    Traffic_Condition_id INT,
    Injury_id INT,
    Crash_id INT,
    Crash_date DATE,
    Cause_id INT,
    
    -- Measures (Chỉ số đo lường)
    injuries_total INT,
    injuries_incapacitating INT,
    injuries_non_incapacitating INT,
    injuries_no_indication INT,
    injuries_fatal INT,
    injuries_reported_not_evident INT,
    nums_unit INT,

    -- Thiết lập các ràng buộc (Constraints) Khóa ngoại
    CONSTRAINT FK_Fact_NaturalCond FOREIGN KEY (Natural_Condition_id) 
        REFERENCES Dim_Natural_condition(Natural_Condition_id),
        
    CONSTRAINT FK_Fact_TrafficCond FOREIGN KEY (Traffic_Condition_id) 
        REFERENCES Dim_Traffic_condition(Traffic_Condition_id),
        
    CONSTRAINT FK_Fact_InjuryInfo FOREIGN KEY (Injury_id) 
        REFERENCES Dim_Injury_info(Injury_id),
        
    CONSTRAINT FK_Fact_CrashInfo FOREIGN KEY (Crash_id) 
        REFERENCES Dim_Crash_info(Crash_id),
        
    CONSTRAINT FK_Fact_DateOfCrash FOREIGN KEY (Crash_date) 
        REFERENCES Dim_Date_of_crash(Crash_date),
        
    CONSTRAINT FK_Fact_Cause FOREIGN KEY (Cause_id) 
        REFERENCES Dim_Cause(Cause_id)
);