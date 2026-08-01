# 🚦 Traffic Accident Analytics Platform

An end-to-end Data Warehouse and Analytics project built from a real-world traffic accident dataset. This project transforms raw accident data into a dimensional data warehouse and interactive Power BI dashboards to support traffic safety analysis and business decision-making.

---

# 📌 Project Overview

The project follows an ELT workflow using PostgreSQL, dbt Core, and Power BI.

Main objectives:

- Build a dimensional Data Warehouse using the Kimball approach.
- Clean and transform raw traffic accident data.
- Apply data quality testing with dbt.
- Create dashboards that answer business questions.
- Support decision-making with data-driven insights.

---

# 🎯 Business Questions

The dashboards are designed to answer the following business questions.

### Business Question 1
Under poor weather conditions combined with low lighting, how much does the severe accident rate increase compared to normal conditions?

### Business Question 2
Which combination of environmental factors creates the highest accident risk?

### Business Question 3
Which driver behaviors remain the primary causes of severe accidents under favorable environmental conditions?

### Business Question 4
Which locations or accident scenarios should be prioritized for resource investment to reduce severe traffic accidents?

---

### Staging Layer
- Clean raw data
- Standardize column names
- Convert data types

### Intermediate Layer
- Apply business logic
- Prepare data for dimensional models

### Marts Layer
- Build fact and dimension tables
- Prepare data for reporting

---

# 🛠️ Technology Stack

| Category | Tools |
|----------|-------|
| Programming | Python (Pandas) |
| Database | PostgreSQL |
| Data Transformation | dbt Core |
| Data Modeling | Kimball Star Schema |
| Business Intelligence | Power BI |
| Version Control | Git & GitHub |

---

# 📦 Data Warehouse Design

The project uses a Star Schema.

### Fact Table

- `fct_traffic_accidents`

### Dimension Tables

- `dim_cause`
- `dim_crash_date`
- `dim_crash_type`
- `dim_natural_condition`
- `dim_traffic_device`

The dimensional model improves query performance and makes dashboard development easier.

---

# 📊 Dashboard Overview

The Power BI dashboard contains three report pages.

### Executive Summary

- Accident overview
- Trend analysis
- Severe accident rate
- Key KPIs

### Environmental Analysis

- Weather conditions
- Lighting conditions
- Environmental risk comparison

### Human Factors Analysis

- Driver behavior
- EPDO Score
- High-risk road types
- Accident hotspots

---

# 📁 Project Structure

```
Traffic-Accident-DWH
│
├── data/                  # Raw dataset
├── Database/              # Star Schema and SQL scripts
├── DataMining/            # Data Profiling and EDA notebooks
├── docs/                  # Project documentation
├── models/                # dbt models
├── Power BI/              # Power BI Project (.pbip)
├── dbt_project.yml
├── README.md
└── CHANGELOG.md
```

---

# 🗺️ Project Roadmap

### Version 1

- Initial Data Warehouse
- SQL-based data transformation
- Power BI dashboard

### Version 2

- PostgreSQL migration
- dbt transformation pipeline
- Data quality testing
- Business analytics framework
- Improved project documentation

### Version 3 (Future)


---

# 📚 Key Learning

Through this project, I practiced:

- Designing a dimensional Data Warehouse
- Building ELT pipelines with dbt
- Writing SQL transformation models
- Applying data quality tests
- Creating Power BI dashboards
- Using Git and GitHub for version control
- Organizing project documentation