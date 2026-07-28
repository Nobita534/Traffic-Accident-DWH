# Metric Dictionary

## 1. Document Overview

### 1.1 Purpose

This document defines the business metrics and Key Performance Indicators (KPIs) used in the Traffic Safety Analytics Platform. It provides standardized metric definitions, calculation logic, business rules, and required data to ensure consistency across analytical models, dashboards, and reports.

---

## 2. Metric Dictionary

| Metric ID | Metric Name | Business Question | Definition | Formula | Required Data | Business Rules | Owner |
|------------|-------------|-------------------|------------|---------|---------------|----------------|-------|
| KPI-01 | Total Accidents | BQ1, BQ2, BQ4 | Total number of recorded traffic accidents. | COUNT(*) *(or COUNT(accident_id))* | fact_id | Count each accident only once. | Data Analytics Team |
| KPI-02 | Severe Rate | BQ1, BQ2, BQ4 | Percentage of severe accidents over total accidents. | Severe Accidents / Total Accidents × 100 | is_severe, fact_id | A severe accident is defined as an accident involving fatal or incapacitating injuries. | Data Analytics Team |
| KPI-03 | Fatal Rate | BQ1, BQ2, BQ4 | Percentage of fatal accidents over total accidents. | Fatal Accidents / Total Accidents × 100 | injuries_fatal, fact_id | Fatal accidents are identified when `injuries_fatal > 0`. | Data Analytics Team |
| KPI-04 | Percentage Increase | BQ1 | Percentage increase in the severe accident rate under poor weather and low-light conditions compared with normal conditions. | ((Scenario Rate − Baseline Rate) / Baseline Rate) × 100 | weather_condition, lighting_condition, road_surface_cond, is_severe | Compare only predefined normal and adverse environmental conditions. | Data Analytics Team |
| KPI-05 | Risk Score (EPDO Priority Score) | BQ2 | A weighted score representing the severity level of accident scenarios. | Based on the EPDO calculation model implemented in the data pipeline. | epdo_priority_score | Higher scores indicate higher accident risk. | Data Analytics Team |
| KPI-06 | Total Severe Accidents | BQ3 | Total number of severe accidents occurring under favorable environmental conditions. | COUNT(is_severe = TRUE) | is_severe, weather_condition, lighting_condition | Only include records under predefined favorable environmental conditions. | Data Analytics Team |
| KPI-07 | Accident Count by Cause | BQ3 | Number of accidents grouped by primary contributing cause. | COUNT(*) GROUP BY prim_contributory_cause | prim_contributory_cause | Each accident is counted once. | Data Analytics Team |
| KPI-08 | Cause Distribution (%) | BQ3 | Percentage contribution of each accident cause to total severe accidents. | Accident Count by Cause / Total Severe Accidents × 100 | prim_contributory_cause, is_severe | Calculated only for severe accidents under favorable environmental conditions. | Data Analytics Team |
| KPI-09 | Priority Score | BQ4 | Priority score used to rank accident scenarios for resource allocation. | Based on EPDO Priority Score or other prioritization criteria. | epdo_priority_score | Higher scores indicate higher investment priority. | Transportation Authorities |
| KPI-10 | Severe Total | BQ1, BQ2, BQ3, BQ4 | Total number of severe accidents. | COUNT(is_severe = TRUE) | is_severe | Count each severe accident once. | Data Analytics Team |
| KPI-11 | Fatal Total | BQ1, BQ2, BQ4 | Total number of fatal accidents. | COUNT(injuries_fatal > 0) | injuries_fatal | Count each fatal accident once. | Data Analytics Team |
| KPI-12 | Total EPDO Score | BQ2, BQ4 | Total weighted accident severity score based on the EPDO methodology. | SUM(epdo_priority_score) | epdo_priority_score | Sum all EPDO scores within the selected filter context. | Data Analytics Team |
| KPI-13 | Average EPDO Score | BQ2, BQ4 | Average accident severity score based on the EPDO methodology. | AVG(epdo_priority_score) | epdo_priority_score | Calculate the average EPDO score for the selected accident records. | Data Analytics Team |
| KPI-14 | Critical Priority Rate | BQ4 | Percentage of accidents classified as critical priority. | Critical Priority Accidents / Total Accidents × 100 | epdo_priority_score, fact_id | Critical priority is determined based on predefined EPDO score thresholds. | Data Analytics Team |
| KPI-15 | Human Error Ratio | BQ3 | Percentage of accidents primarily caused by driver-related factors. | Human Error Accidents / Total Accidents × 100 | prim_contributory_cause, fact_id | Driver-related causes follow the standardized business definition. | Data Analytics Team |