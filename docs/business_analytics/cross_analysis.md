# Cross Analysis

## 1. Overview

Cross Analysis is a report used to examine the relationship between two or more variables at the same time. It helps stakeholders identify high-risk combinations and provides evidence for the next step of the analysis. This report also serves as a bridge to the Root Cause Analysis.

---

# 2. Analysis Methodology

## Data Source

- **Traffic Accident Data Warehouse**
- **Fact Table:** `fct_traffic_accidents`

## Dimensions Used

- `dim_crash_date`
- `dim_natural_condition`
- `dim_traffic_device`
- `dim_crash_type`
- `dim_cause`

## Key Measures

- Total Accident
- Severe Rate
- Total EPDO Score
- Human Error Rate
- Priority Trafficways
- Adverse Surface Incident Rate

## Analysis Tools

- Power BI
- DAX

---

# 3. Cross Analysis Results

## 3.1 Business Question 1

### Business Question

How much does the severe accident rate increase under bad weather and low-light conditions compared to normal conditions?

### Objective

Identify the impact of bad weather on traffic accidents in low-light road conditions.

### Cross Dimensions

**dim_natural_condition**

- lighting_condition
- weather_condition
- road_surface_cond

**dim_crash_type**

- first_crash_type

### Supporting Dashboard and KPIs

- Crash Severity Distribution by Road Surface (Stacked Bar Chart)
- Severe Environmental Impact Rate (KPI)
- Adverse Surface Incident (KPI)

### Observation

- The severe accident rate under **bad conditions** changed significantly over the years and was often higher than under normal conditions. It reached the highest level in **2023 (about 6.6%)**, while **no severe accident rate was recorded in 2015 and 2025**.
- Around **23.83%** of all traffic accidents happened on poor road surfaces during the period from **2013 to 2025**. The highest rate was recorded in **2022 (about 26.27%)**.
- During the same period, **1,163 accidents** occurred under bad weather conditions, and about **0.17%** of these accidents involved fatalities.
- In **2022**, the **Critical Priority Rate** increased to **0.20%**. In addition, accidents on roads covered with **sand and soil** recorded a **100% severe accident rate** based on the available accident records, while the remaining road surface conditions were between **1% and 3%**.

---

## 3.2 Business Question 2

### Business Question

Which combination of environmental factors creates the highest accident risk?

### Objective

Identify the highest-risk environmental combinations to support road safety planning.

### Cross Dimensions

**dim_natural_condition**

- lighting_condition
- weather_condition

### Supporting Dashboard and KPIs

- Severe Crash Rate Interaction Matrix (Heatmap)
- Peak Risk Window (KPI)

### Observation

- The heatmap shows that the highest severe accident rate was found in the combination of **SEVERE CROSS WIND** and **DARKNESS, LIGHTED ROAD**, with a severe rate of about **17%** during **2013–2025**.
- In **2013**, no environmental combination showed a high severe accident rate. By **mid-January 2025**, the combination of **BLOWING SNOW** and **DAYLIGHT** recorded a severe rate of **100%**.

---

## 3.3 Business Question 3

### Business Question

Which driver behaviors remain the main causes of severe accidents under favorable environmental conditions?

### Objective

Understand how human factors affect traffic accidents besides environmental conditions.

### Cross Dimensions

**dim_cause**

- primary_cause

**dim_natural_condition**

- lighting_condition
- weather_condition

### Supporting Dashboard and KPIs

- Top 10 Human Errors in Favorable Conditions (Clustered Bar Chart)
- Top 10 Behavioral Risks in Adverse Conditions (Clustered Bar Chart)
- Human Error Rate (KPI)
- Clear-Weather Severe Accidents (KPI)

### Observation

- The number of accidents under favorable weather conditions was about **three times higher** than under adverse weather conditions. The **Human Error Rate** reached about **67.25%** during the analysis period.
- Under favorable conditions, **UNABLE TO DETERMINE** and **FAILING TO YIELD RIGHT-OF-WAY** were the two most common causes. Under adverse conditions, **WEATHER** appeared among the leading causes of accidents.

---

## 3.4 Business Question 4

### Business Question

Which locations or traffic scenarios should be given priority to reduce severe accidents?

### Objective

Identify the locations or traffic scenarios that should receive priority for safety improvements.

### Cross Dimensions

**dim_traffic_device**

- trafficway_type

### Supporting Dashboard and KPIs

- Infrastructure Blackspot Identification Matrix (Scatter Plot)
- Most Accident-Prone Trafficway (KPI)
- Priority Trafficways (KPI)

### Observation

- The three trafficway types with the highest number of accidents were **NOT DIVIDED**, **FOUR WAY**, and **DIVIDED – W/MEDIAN BARRIER**. Both **NOT DIVIDED** and **FOUR WAY** recorded more than **40,000 accidents** during the analysis period.
- According to the Infrastructure Blackspot Identification Matrix, only **NOT DIVIDED** was above the average threshold for both **Total Accident** and **Avg EPDO Score**.

---

# 4. Key Findings

- Bad environmental conditions are not the only factor that increases accident severity. The risk becomes much higher when several environmental factors happen together, especially bad weather and low-light conditions.

- Most traffic accidents still happened under favorable weather conditions, and human error was the largest contributing factor in the dataset.

- Not all trafficway types with many accidents also had a high level of accident severity. Only a few trafficway types met both conditions.

- Accident severity is affected by the combination of several factors rather than by a single factor.

- The results of all Business Questions suggest that priority should be based on both accident frequency and accident severity, instead of only the number of accidents.