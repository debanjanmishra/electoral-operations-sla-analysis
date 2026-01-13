# Electoral Operations SLA & Bottleneck Analysis

## Project Overview
This project analyzes voter application processing data to identify SLA breaches, operational bottlenecks, and root causes of delays in large-scale electoral operations.

## Business Problem
Election offices process high volumes of voter applications under strict timelines. Delays increase operational risk and reduce public trust. This analysis focuses on identifying where and why SLA breaches occur.

## Data
- Synthetic dataset simulating 100,000+ voter applications
- Fields include district, form type, processing time, approval status, and rejection reasons

## Approach
- Generated realistic operational data using Python
- Performed SLA breach and aggregation analysis using SQL
- Built decision-focused dashboards in Power BI to support prioritization

## Key Insights

- Identified districts with consistently high SLA breach rates (>35%), indicating systemic processing delays  
- High-volume districts showed a strong correlation between application load and SLA breaches  
- Correction requests took significantly longer to process than new applications  
- Majority of rejections were driven by data quality issues such as missing documents and address mismatches

## Business Recommendations

- Introduce district-level SLA monitoring and escalation thresholds  
- Reallocate processing capacity to high-volume, high-risk districts  
- Improve application validation to reduce rework caused by corrections  
- Implement pre-submission checks to minimize rejection due to data quality issues


## Tools Used
- Python (Pandas, NumPy)
- SQL (SQLite)
- Power BI
