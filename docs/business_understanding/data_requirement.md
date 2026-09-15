# Data Requirements

## 1. Document Overview

### 1.1 Purpose

This document defines the data required to answer the business questions and support the business requirements. It helps Data Analysts and Database Administrators identify, prepare, and transform the necessary data elements for analytical purposes.

---

## 2. Data Requirements

| Data Requirement ID | Related Business Requirement | Business Need | Source Data Elements | Derived Data Elements | Purpose |
|---------------------|------------------------------|---------------|----------------------|-----------------------|---------|
| **DR-01** | **BR-01** | Monitoring standardized road safety KPIs in order to evaluate accident performance from multiple business perspectives. | `num_units`, `injuries_fatal`, `damage`, `injuries_non_incapacitating`, `injuries_no_indication`, `injuries_incapacitating`, `traffic_control_device`, `crash_type`, `trafficway_type`, `crash_date` | `is_severe`, `fact_id`, `month` *(derived from `crash_date`)* | Provide stakeholders with an overall view of traffic accidents and crash characteristics over a specific period to support standardized KPI monitoring. |
| **DR-02** | **BR-02**, **BR-03** | Analyze the relationships between environmental conditions, driver behavior, and accident severity to identify major contributing risk factors and support multidimensional accident analysis. | `weather_condition`, `lighting_condition`, `road_surface_cond`, `first_crash_type`, `prim_contributory_cause`, `injuries_fatal`, `injuries_non_incapacitating`, `injuries_no_indication`, `injuries_incapacitating`, `crash_year`, `crash_date` | `is_severe`, `year` *(derived from `crash_year`)*, `month` *(derived from `crash_date`)*, `hour` *(derived from `crash_date`)* | Identify combinations of environmental conditions associated with severe traffic accidents and analyze driver behavior to determine the major contributing risk factors. |
| **DR-03** | **BR-04** | Provide actionable insights and recommendations that enable transportation authorities to identify high-severity trafficway patterns and accident trends for supporting road safety planning and resource prioritization. | `injuries_fatal`, `injuries_total`, `trafficway_type`, `alignment`, `intersection_related_i`, `traffic_control_device`, `num_units`, `damage`, `crash_date` | `is_severe`, `crash_severity_weight`, `year` *(derived from `crash_date`)* | Support crash-frequency and Severity Index comparisons across trafficway types to prioritize candidates for further road safety assessment and resource allocation. |