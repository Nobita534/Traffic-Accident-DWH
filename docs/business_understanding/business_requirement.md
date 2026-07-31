# Business Requirements

## 1. Document Overview

### 1.1 Purpose

This document defines the business requirements for the Traffic Safety Analytics Platform. It provides a shared understanding among Business Analysts, Data Analysts, and Analytics Engineers, serving as the foundation for designing and developing the data warehouse and analytics solution.

### 1.2 Scope

This document defines the business requirements for **Version 2** of the Traffic Safety Analytics Platform.
The scope includes standardizing business documentation, supporting business-driven analytics, defining standardized business KPIs, improving data quality, and enabling root cause analysis to support data-driven decision-making.
Advanced capabilities such as predictive analytics, real-time data processing, machine learning, and enterprise data governance are considered out of scope and will be addressed in future project versions.

### 1.3 Reference

The project background, business context, business objectives, and overall project motivation are documented in [business context.md](business%20context.md). This document should be read in conjunction with the Business Context document before reviewing the detailed business requirements.

## 2. Stakeholders

| Stakeholder | Role | Responsibilities |
| --- | --- | --- |
| Transportation Authorities | Primary Business Stakeholder | Monitor traffic safety performance, identify high-risk areas, and prioritize road safety initiatives. |
| Road Safety Analysts | Business User | Analyze accident patterns, evaluate environmental and behavioral risk factors, and generate analytical reports. |
| Policy Makers | Decision Maker | Use analytical insights to support evidence-based policy planning and resource allocation. |
| Business Analyst | Requirement Analyst | Gather business requirements, define business objectives, document functional requirements, and communicate stakeholder needs to the development team. |
| Data Analyst | Data Consumer | Explore analytical data, validate business KPIs, identify trends and insights, and support decision-making through reports and dashboards. |
| Analytics Engineer | Solution Developer | Design the dimensional data warehouse, develop ELT pipelines, implement semantic models, and deliver analytical dashboards. |

## 3. Project Scope

### 3.1 In Scope

The project includes the following business capabilities:

The project includes the following business capabilities:

- Standardize business documentation, including Business Context, Business Problem, Business Questions, and Business Requirements.
- Collect and integrate Chicago Traffic Crashes data into a centralized analytical platform.
- Design a Kimball dimensional data warehouse to support multidimensional analysis.
- Develop a standardized ELT pipeline using PostgreSQL and dbt.
- Build semantic models for consistent KPI calculation.
- Define standardized KPI Dictionary and Data Requirements.
- Support Root Cause Analysis by analyzing environmental conditions, driver behavior, and accident severity.
- Improve data quality to increase the reliability of analytical results.
- Deliver interactive Power BI dashboards for road safety monitoring.
- Enable stakeholders to analyze accident trends across different business dimensions, including:
   - Time
   - Location
   - Weather conditions
   - Road conditions
   - Lighting conditions
   - Driver behavior
- Support future analytical extensions through a scalable data architecture.

### 3.2 Out of Scope

The current project does **not** include:

- Real-time accident monitoring or streaming data processing.
- Machine learning or accident prediction models.
- Geographic Information System (GIS) visualization.
- Integration with external traffic management systems.
- Mobile or web applications for public users.
- Operational traffic management or emergency response systems.

## 4. Business Requirements

| ID | Requirement |
| --- | --- |
| BR-01 | The platform shall enable stakeholders to monitor standardized road safety KPIs in order to evaluate accident performance from multiple business perspectives. |
| BR-02 | The platform shall support the analysis of relationships between environmental conditions, driver behavior, and accident severity to identify the major contributing risk factors. |
| BR-03 | The platform shall allow users to analyze accident data across multiple business dimensions, including time, location, weather conditions, lighting conditions, road surface conditions, driver behavior, and accident severity, to support different analytical scenarios. |
| BR-04 | The platform shall provide actionable insights and recommendations that enable transportation authorities to identify high-risk accident scenarios, conditions, and trends for supporting road safety planning and resource prioritization. |
| BR-05 | The platform shall support future expansion by allowing new business questions, business requirements, KPIs, analytical metrics, and analytical models to be incorporated without disrupting existing analytical capabilities. |

## 5. Business Rules

| ID | Business Rule |
| --- | --- |
| BR-01 | All KPIs shall be calculated from standardized data stored in the Data Warehouse to ensure reporting consistency. |
| BR-02 | Each traffic accident shall be represented only once within the analytical platform to avoid duplicate reporting. |
| BR-03 | Users shall analyze data using standardized dimensions and business metrics provided by the platform. |
| BR-04 | Dashboards shall reflect the latest available data after each completed data refresh cycle. |
| BR-05 | KPI definitions shall remain consistent across all analytical reports and dashboards. |
| BR-06 | KPIs and analytical reports shall only be generated from data that has passed the defined data quality validation rules. |

## 6. Assumptions and Constraints

### 6.1 Assumptions

- The Chicago Traffic Crashes dataset provides sufficient information for road safety analysis.
- Critical attributes such as accident time, location, severity, environmental conditions, and driver behavior are available with acceptable data quality.
- End users possess basic knowledge of dashboards and analytical reporting.
- The dataset contains sufficient information to answer the defined business questions and calculate standardized business KPIs.

### 6.2 Constraints

- The project relies on a publicly available Kaggle dataset; therefore, analytical capabilities are limited to the available data.
- Real-time data ingestion is outside the scope of this project.
- Dashboards provide historical analytical insights only and do not include predictive or simulation capabilities.
- The platform is developed as an educational analytics project rather than a production-grade operational system.
- Business recommendations are limited to the available historical data and should not be interpreted as operational or policy decisions.

## 7. Future Enhancements

### 7.1 Phase 2 - Business-driven Analytics

**Objective**

Enhance business analysis capabilities by improving business documentation, standardizing KPI definitions, and strengthening the relationship between business questions, business requirements, and analytical outputs.

**Expected Outcomes**

- Standardized business documentation.
- Standardized KPI Dictionary.
- Complete Data Requirement documentation.
- Clear traceability from Business Questions to analytical outputs.

### 7.2 Phase 3 - Data Quality Improvement

**Objective**

Improve the reliability and consistency of analytical data by implementing data quality validation and monitoring processes.

**Expected Outcomes**

- Improve overall data quality.
- Standardize data validation rules.
- Reduce duplicate and inconsistent records.
- Increase confidence in analytical results.

### 7.3 Phase 4 - Dashboard Enhancement

**Objective**

Improve dashboards by applying business storytelling, root cause analysis, and actionable recommendations.

**Expected Outcomes**

- More interactive dashboards.
- Better business storytelling.
- Root cause analysis for key business questions.
- Clear business recommendations for stakeholders.