# Traffic Safety Analytics Project

## Executive Summary

Road traffic accidents remain one of the leading public safety challenges worldwide. According to the World Health Organization (WHO), approximately 1.19 million people die and 20–50 million people sustain non-fatal injuries each year due to road traffic crashes. Beyond the human impact, traffic accidents impose significant economic costs through medical expenses, infrastructure damage, property loss, and reduced productivity, accounting for an estimated 3% of a country's annual GDP.

To reduce traffic accidents effectively, transportation authorities must understand where, when, and why severe crashes occur in order to prioritize road safety initiatives and allocate public resources efficiently. However, identifying high-risk accident scenarios and recurring driver behavior patterns from large volumes of crash records remains a difficult and time-consuming process, limiting timely and evidence-based decision-making.

Although detailed crash data is continuously collected, it is primarily stored in operational, transaction-oriented formats rather than analytical models. This makes it difficult to perform multidimensional analysis, monitor standardized safety KPIs, and generate consistent reports across different business perspectives without significant manual effort.

## Business Objectives

This project aims to support evidence-based road safety management by:

- Providing a consistent view of road safety performance through standardized KPIs.
- Identifying high-risk environmental conditions and driver behavior associated with severe accidents.
- Enabling stakeholders to prioritize road safety initiatives based on analytical insights.
- Establishing a scalable analytical foundation that can support future business questions and advanced traffic safety analysis.

## Solution Focus

To achieve these business objectives, the project focuses on:

- Designing a Kimball dimensional data warehouse optimized for analytical workloads.
- Developing a standardized and maintainable ELT pipeline using PostgreSQL and dbt.
- Implementing reusable semantic models for KPI calculation and multidimensional analysis.
- Delivering interactive Power BI dashboards that support self-service analytics and future system enhancements.

## Target Outcome

The project develops a centralized Traffic Safety Analytics Platform that integrates a dimensional Data Warehouse with interactive Power BI dashboards. The platform enables transportation authorities, road safety analysts, and policymakers to monitor key safety indicators, identify emerging accident patterns, evaluate environmental and behavioral risk factors, and support data-driven planning for road safety improvement. Its modular architecture also provides a scalable foundation for future enhancements, including performance optimization, advanced analytics, and data governance.