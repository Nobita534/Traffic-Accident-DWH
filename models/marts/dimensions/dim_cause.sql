{{ config(materialized='table') }}

WITH unique_causes AS (
    SELECT DISTINCT
        prim_contributory_cause AS primary_cause,
        UPPER(TRIM(prim_contributory_cause)) AS normalized_cause
    FROM {{ ref('int_traffic_accidents') }}
)

SELECT
    ROW_NUMBER() OVER (ORDER BY primary_cause) AS cause_id,
    primary_cause,
    CASE
        -----------------------------------------------------------------------
        -- 1. YẾU TỐ CON NGƯỜI (HUMAN FACTORS)
        -----------------------------------------------------------------------
        -- Nhóm hành vi: Không chấp hành luật / Biển báo
        WHEN normalized_cause IN (
            'BICYCLE ADVANCING LEGALLY ON RED LIGHT',
            'DISREGARDING OTHER TRAFFIC SIGNS',
            'DISREGARDING ROAD MARKINGS',
            'DISREGARDING STOP SIGN',
            'DISREGARDING TRAFFIC SIGNALS',
            'DISREGARDING YIELD SIGN',
            'DRIVING ON WRONG SIDE/WRONG WAY',
            'MOTORCYCLE ADVANCING LEGALLY ON RED LIGHT',
            'PASSING STOPPED SCHOOL BUS',
            'TURNING RIGHT ON RED'
        ) THEN 'Human Factors'

        -- Nhóm hành vi: Lỗi điều khiển kỹ thuật
        WHEN normalized_cause IN (
            'EXCEEDING AUTHORIZED SPEED LIMIT',
            'EXCEEDING SAFE SPEED FOR CONDITIONS',
            'FAILING TO REDUCE SPEED TO AVOID CRASH',
            'FAILING TO YIELD RIGHT-OF-WAY',
            'FOLLOWING TOO CLOSELY',
            'IMPROPER BACKING',
            'IMPROPER LANE USAGE',
            'IMPROPER OVERTAKING/PASSING',
            'IMPROPER TURNING/NO SIGNAL',
            'OPERATING VEHICLE IN ERRATIC, RECKLESS, CARELESS, NEGLIGENT OR AGGRESSIVE MANNER'
        ) THEN 'Human Factors'

        -- Nhóm hành vi: Sự xao nhãng (Distraction)
        WHEN normalized_cause IN (
            'CELL PHONE USE OTHER THAN TEXTING',
            'DISTRACTION - FROM INSIDE VEHICLE',
            'DISTRACTION - OTHER ELECTRONIC DEVICE (NAVIGATION DEVICE, DVD PLAYER, ETC.)',
            'TEXTING'
        ) THEN 'Human Factors'

        -- Nhóm hành vi: Trạng thái tài xế
        WHEN normalized_cause IN (
            'DRIVING SKILLS/KNOWLEDGE/EXPERIENCE',
            'HAD BEEN DRINKING (USE WHEN ARREST IS NOT MADE)',
            'PHYSICAL CONDITION OF DRIVER',
            'UNDER THE INFLUENCE OF ALCOHOL/DRUGS (USE WHEN ARREST IS EFFECTED)'

        ) THEN 'Human Factors'

        -----------------------------------------------------------------------
        -- 2. YẾU TỐ BÊN NGOÀI (EXTERNAL FACTORS)
        -----------------------------------------------------------------------
        -- Nhóm yếu tố: Môi trường / Tự nhiên
        WHEN normalized_cause IN (
            'ANIMAL',
            'DISTRACTION - FROM OUTSIDE VEHICLE',
            'WEATHER'
        ) THEN 'External Factors'

        -- Nhóm yếu tố: Hạ tầng / Giao thông
        WHEN normalized_cause IN (
            'OBSTRUCTED CROSSWALKS',
            'RELATED TO BUS STOP',
            'ROAD CONSTRUCTION/MAINTENANCE',
            'ROAD ENGINEERING/SURFACE/MARKING DEFECTS',
            'VISION OBSCURED (SIGNS, TREE LIMBS, BUILDINGS, ETC.)'
        ) THEN 'External Factors'

        -- Nhóm yếu tố: Phương tiện / Tình huống khẩn cấp
        WHEN normalized_cause IN (
            'EQUIPMENT - VEHICLE CONDITION',
            'EVASIVE ACTION DUE TO ANIMAL, OBJECT, NONMOTORIST'
        ) THEN 'External Factors'

        -----------------------------------------------------------------------
        -- 3. NHÓM KHÔNG XÁC ĐỊNH / KHÔNG ÁP DỤNG
        -----------------------------------------------------------------------
        WHEN normalized_cause IN (
            'NOT APPLICABLE',
            'UNABLE TO DETERMINE'
        ) THEN 'Unknown / Not Applicable'

        -- Bọc lót cho các trường hợp dữ liệu mới phát sinh trong tương lai
        ELSE 'Unknown / Not Applicable'
    END AS cause_group
FROM unique_causes