# Release Note – Version 2

**Release Date:** August 2026

## Overview

Version 2 focuses on improving the analytics workflow instead of only building dashboards. This release restructures the dbt project, adds data quality validation, improves documentation, and redesigns the dashboard based on business questions.

---

# What's New

## 1. Business Analytics Improvement

- Redesigned the dashboard based on four business questions.
- Added root cause analysis for environmental and human factors.
- Added business recommendations for decision making.
- Improved KPI definitions and business metrics.

---

## 2. Data Warehouse

- Reorganized the dbt project into:
  - Staging
  - Intermediate
  - Marts
- Improved SQL transformation logic.
- Updated dimensional models for analytics.

---

## 3. Data Quality

Implemented data quality validation using dbt tests.

Current validations include:

- Primary key uniqueness
- Not null constraints
- Foreign key relationships
- Accepted values

Source freshness was removed because the project uses a static historical dataset instead of continuously updated data.

---

## 4. Documentation

Added project documentation including:

- dbt documentation
- Model descriptions
- Data lineage
- Updated README
- Project structure explanation

---

## 5. Repository

Repository structure was cleaned and reorganized.

Changes include:

- Removed generated dbt artifacts (`target/`)
- Ignored runtime logs
- Improved folder organization
- Cleaner Git history

---

# Project Status

Version 2 is considered feature complete.

Current architecture includes:

- PostgreSQL
- dbt Core
- Kimball Star Schema
- Power BI
- Business-oriented dashboard
- Data quality testing
- Project documentation

---

# Next Version

Version 3 will focus on cloud data engineering.

Planned improvements:

