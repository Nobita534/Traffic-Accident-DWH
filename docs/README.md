# Project Documentation

The `docs/` directory contains the project's **business-understanding documentation** and release notes.

Analytical findings, dashboard evidence, interpretations, and recommendations are maintained separately in the [Power BI analysis README](../Power%20BI/README.md). This avoids duplicating analytical conclusions across multiple documentation files.

---

## Documentation Structure

### Business Understanding

| Document | Purpose |
|---|---|
| [business_context.md](business_understanding/business_context.md) | Describes the project context, analytical scope, and intended outcomes. |
| [business_problem.md](business_understanding/business_problem.md) | Defines the road-safety problems that motivate the project. |
| [business_question.md](business_understanding/business_question.md) | Defines the business questions that guide the analysis. |
| [business_requirement.md](business_understanding/business_requirement.md) | Translates the analytical goals into business requirements. |
| [business_workflow.md](business_understanding/business_workflow.md) | Documents the end-to-end business and analytical workflow. |
| [data_requirement.md](business_understanding/data_requirement.md) | Identifies the data required to answer the business questions. |
| [metric_dictionary.md](business_understanding/metric_dictionary.md) | Standardizes KPI definitions, calculation logic, and analytical meaning. |

### Release Documentation

| Document | Purpose |
|---|---|
| [released-v2.md](released-v2.md) | Summarizes the Version 2 refactor and major project changes. |

---

## Documentation Workflow

```text
Business Context
      ↓
Business Problem
      ↓
Business Questions
      ↓
Business Requirements
      ↓
Data Requirements
      ↓
Metric Dictionary
      ↓
Data Modeling & Transformation
      ↓
Power BI Analysis
      ↓
Findings & Recommendations
```

The first six stages are documented in `docs/business_understanding/`.

Technical transformation logic is implemented in the dbt project, while the final analytical layer is documented in `Power BI/README.md`.

---

## Directory Structure

```text
docs/
├── business_understanding/
│   ├── business_context.md
│   ├── business_problem.md
│   ├── business_question.md
│   ├── business_requirement.md
│   ├── business_workflow.md
│   ├── data_requirement.md
│   └── metric_dictionary.md
│
├── released-v2.md
└── README.md
```

---

## Documentation Principle

The project separates documentation by responsibility:

- **Business understanding** defines what the project is trying to answer and how success is measured.
- **dbt models** contain transformation and analytical data-model logic.
- **Power BI** contains the final analysis, evidence, findings, limitations, and high-level recommendations.

This structure keeps the analytical story traceable from **Business Question → Metric → Model → Dashboard → Finding → Recommendation** without maintaining duplicate analysis documents.
