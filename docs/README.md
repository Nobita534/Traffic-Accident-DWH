# Business Documentation (Version 2)

Version 2 reorganizes the project documentation into two main phases: **Business Understanding** and **Business Analytics**. This structure provides a clear workflow from understanding business needs to generating actionable recommendations based on data analysis.

---

# Documentation Structure

## 01. Business Understanding

| Document | Description |
|----------|-------------|
| business_problem.md | Defines the business problems that motivate the project. |
| business_context.md | Describes the project background, objectives, and expected outcomes. |
| business_question.md | Lists the key business questions that guide the analytical process. |
| business_requirement.md | Defines the business requirements for the analytics platform. |
| data_requirement.md | Identifies the required data elements needed to support business analysis. |
| metric_dictionary.md | Standardizes KPI definitions, calculation logic, and business metrics. |

---

## 02. Business Analytics

| Document | Description |
|----------|-------------|
| cross_analysis.md | Examines relationships between multiple business dimensions and identifies key patterns. |
| root_cause_analysis.md | Explains the underlying causes behind the findings discovered in the cross analysis. |
| recommendation_framework.md | Provides practical recommendations based on the identified root causes to support decision-making. |

---

# Business Analytics Workflow

```text
Business Problem
        │
        ▼
Business Context
        │
        ▼
Business Questions
        │
        ▼
Business Requirements
        │
        ▼
Data Requirements
        │
        ▼
Metric Dictionary
        │
        ▼       
Star Schema Design
        │
        ▼
Data Warehouse Implementation
        │
        ▼
Power BI Dashboard
        │
        ▼
Cross Analysis
        │
        ▼
Root Cause Analysis
        │
        ▼
Recommendation Framework
```

---

# Directory Structure

```text
docs/
├── 01_business_understanding/
│   ├── business_problem.md
│   ├── business_context.md
│   ├── business_question.md
│   ├── business_requirement.md
│   ├── business_data_requirement.md
│   └── metric_dictionary.md
│
├── 02_business_analytics/
│   ├── cross_analysis.md
│   ├── root_cause_analysis.md
│   └── recommendation_framework.md
│
└── README.md
```

---

# Version 2 Highlights

- Reorganized documentation into **Business Understanding** and **Business Analytics**.
- Standardized the business analysis workflow from problem definition to recommendations.
- Added **Cross Analysis** to examine relationships between multiple business dimensions.
- Introduced **Root Cause Analysis** to explain why business issues occur.
- Established a **Recommendation Framework** that connects analytical findings with practical actions.
- Improved traceability from business problems to actionable recommendations.