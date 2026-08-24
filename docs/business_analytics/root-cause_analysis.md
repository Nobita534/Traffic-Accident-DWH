# Root Cause Analysis

## 1. Overview

Root Cause Analysis is conducted to identify the key factors contributing to the patterns and trends identified in the Cross Analysis report. The findings from the Root Cause Analysis provide the basis for developing the Recommendation Framework and support stakeholders in making appropriate decisions to reduce the occurrence of severe traffic accidents.

---

# 2. Root Cause Analysis

## 2.1 Business Question 1

### Business Question

Under adverse weather conditions combined with poor lighting, how much does the severe accident rate increase compared with normal conditions?

### Observation

- The severe accident rate under **Bad Conditions** fluctuated significantly across the years and frequently exceeded the rate observed under normal conditions, reaching its highest level in **2023 (approximately 6.6%)**. However, no severe accidents were recorded under these conditions in **2015** and **2025**.
- Accidents occurring on adverse road surfaces accounted for approximately **23.83%** of all accidents during **2013–2025**, with the highest proportion recorded in **2022 (~26.27%)**.
- During the same period, only approximately **1,163 accidents** were recorded under adverse weather conditions, of which approximately **0.17%** were fatal accidents.
- In **2022**, the **Critical Priority Rate** increased to **0.20%**, while a **100% severe accident rate** was recorded for accidents occurring on road surfaces with significant amounts of dirt or sand. Other road surface conditions ranged between **1–3%**.

### Identified Root Cause

Accidents occurring on adverse road surfaces are primarily associated with reduced vehicle control when unfavorable road surface and weather conditions occur simultaneously. These conditions reduce road traction and increase braking distance, making it more difficult for drivers to respond effectively to unexpected situations.

Although accidents occurring under adverse weather conditions represent only a relatively small proportion of the overall dataset, these accidents are often associated with unfavorable environmental factors, increasing the likelihood of severe collisions.

### Supporting Evidence

- **Adverse Surface Incident Rate:** 23.83% of all accidents occurred on adverse road surfaces.
- **1,163 accidents** were recorded under adverse weather conditions.
- **Crash Severity Distribution by Road Surface** shows that the proportion of accidents occurring on adverse road surfaces increased significantly in **2022 (~26.27%)**.
- **Severe Accident Rate: Normal vs High-Risk Conditions** shows that the severe accident rate under adverse conditions combined with poor lighting fluctuated significantly compared with normal conditions, while no severe accidents were recorded under these conditions in **2015** and **2025**.

---

## 2.2 Business Question 2

### Business Question

Which combination of environmental factors creates the highest level of risk?

### Observation

- The heatmap shows that the combination of **SEVERE CROSSWIND** and **DARKNESS, LIGHTED ROAD** recorded the highest severe accident rate (**~17%**) during **2013–2025**.
- By mid-**January 2025**, the combination of **BLOWING SNOW** and **DAYLIGHT** recorded a **Severe Rate of 100%**.

### Identified Root Cause

Environmental factors typically do not affect driving conditions independently. Instead, they can simultaneously influence visibility, vehicle control, and driver reaction time.

Under strong crosswind conditions combined with limited visibility, drivers may have greater difficulty maintaining vehicle stability and detecting potential hazards on the road. When multiple adverse factors occur simultaneously, the driver's ability to respond effectively is significantly reduced, increasing the severity of potential accidents.

For the **BLOWING SNOW** and **DAYLIGHT** combination, although the dataset recorded a very high **Severe Rate** in **2025**, this result should be evaluated together with the actual number of accidents before drawing a general conclusion.

### Supporting Evidence

- **Severe Crash Rate Interaction Matrix (Heatmap)** shows that the combination of **SEVERE CROSSWIND + DARKNESS, LIGHTED ROAD** recorded the highest **Severe Rate (~17%)**.
- **Peak Risk Window (KPI)** identifies environmental condition combinations with notably high risk levels.

---

## 2.3 Business Question 3

### Business Question

Which driver behaviors remain the primary contributors to severe accidents under favorable environmental conditions?

### Observation

- The number of accidents under favorable weather conditions was approximately **three times higher** than under adverse weather conditions. The **Human Error Rate** reached approximately **67.25%** across the entire analysis period.
- Under favorable environmental conditions, **UNABLE TO DETERMINE** and **FAILING TO YIELD RIGHT-OF-WAY** were the two most frequently recorded contributing factors. Under adverse environmental conditions, **WEATHER** appeared among the factors associated with a high number of accidents.

### Identified Root Cause

Under favorable weather and environmental conditions, road users may become overconfident and underestimate potential risks while driving. This can lead to reduced attention and behaviors such as failure to yield the right-of-way, delayed responses, or insufficient compliance with traffic regulations.

In addition, the high proportion of **UNABLE TO DETERMINE** indicates that the specific causes of many accidents could not be clearly identified. This may reflect limitations in the data collection or reporting process and suggests that additional contributing factors may not yet be captured or modeled in the current dataset.

### Supporting Evidence

- **Human Error Rate (67.25%)** indicates that a large proportion of accidents were associated with human factors.
- **Top 10 Human Errors in Favorable Conditions** identifies **UNABLE TO DETERMINE** and **FAILING TO YIELD RIGHT-OF-WAY** as the two most common contributing factors.
- **Top 10 Behavioral Risks in Adverse Conditions** shows that **WEATHER** appears among the factors associated with a high number of accidents when environmental conditions become unfavorable.

---

## 2.4 Business Question 4

### Business Question

Which areas or scenarios should be prioritized for resource investment to reduce severe traffic accidents?

### Observation

- The three trafficway types with the highest number of accidents are **NOT DIVIDED**, **FOUR WAY**, and **DIVIDED – W/MEDIAN BARRIER**. Both **NOT DIVIDED** and **FOUR WAY** recorded more than **40,000 accidents** during the analysis period.
- According to the **Infrastructure Blackspot Identification Matrix**, only **NOT DIVIDED** exceeded both the average **Total Accident** and **Avg EPDO Score** thresholds simultaneously.

### Identified Root Cause

A large proportion of accidents are concentrated on **NOT DIVIDED** roads, indicating that these road types experience a high volume of traffic and frequent conflict points between vehicles. As traffic volume increases, the number of intersections, turning movements, and lane changes may also increase, raising the likelihood of collisions.

Furthermore, **NOT DIVIDED** is the only infrastructure type that simultaneously exceeds the average thresholds for both **Total Accident** and **Avg EPDO Score**. This indicates that it is not only associated with a high number of accidents but also with a higher level of accident severity compared with the overall average. Therefore, it should be prioritized for further analysis and targeted road safety interventions.

### Supporting Evidence

- **Infrastructure Blackspot Identification Matrix (Scatter Plot)** shows that only **NOT DIVIDED** falls within the area exceeding both the **Total Accident** and **Avg EPDO Score** thresholds.
- **Most Accident-Prone Trafficway (KPI)** identifies **NOT DIVIDED** as the trafficway type with the highest number of accidents.
- **Priority Trafficways (KPI)** indicates that only one infrastructure type is classified as a priority for improvement.