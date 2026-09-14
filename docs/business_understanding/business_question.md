# Business Questions

## 1. Document Overview

### 1.1 Purpose

This document defines the key business questions that the Traffic Safety Analytics Platform aims to answer. These questions guide the business requirements, metric definitions, data requirements, and dashboard development throughout the project.

---

## 2. Business Questions

| ID | Question | Objective | Recommendation | Priority | Owner |
|----|----------|-----------|----------------|----------|-------|
| BQ1 | Under poor weather conditions combined with low lighting, how much does the severe accident rate increase compared to normal conditions? | Determine the impact of poor weather and low-light conditions on severe traffic accidents. | Prioritize the implementation of road safety improvements in areas with poor weather and low-light conditions. | High | Road Safety Analysts |
| BQ2 | Which sufficiently supported combination of weather and lighting conditions has the highest severe accident rate among recorded crashes? | Identify environmental combinations with high observed accident severity while controlling for low-volume groups. | Prioritize further monitoring of environmental combinations with both sufficient recorded-crash volume and elevated Severe Rate. | High | Road Safety Analysts |
| BQ3 | Which driver behaviors remain the primary causes of severe accidents under favorable environmental conditions? | Understand how driver behavior contributes to severe accidents when environmental conditions are favorable. | Recommend strengthening traffic monitoring measures and promoting road safety awareness in high-risk areas. | High | Road Safety Analysts |
| BQ4 | Which locations or accident scenarios should be prioritized for resource investment to reduce severe traffic accidents? | Identify locations or accident scenarios that should be prioritized for road safety investment. | Prioritize resource allocation to high-risk locations based on analytical findings. | High | Transportation Authorities |

> **BQ2 interpretation note:** The dataset contains recorded crash events but does not contain a traffic-exposure denominator such as traffic volume, trips, or vehicle-miles traveled. Therefore, BQ2 compares the proportion of severe crashes among recorded crashes; it does not estimate the probability of a crash occurring.