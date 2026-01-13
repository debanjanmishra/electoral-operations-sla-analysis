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
- SLA breaches vary significantly across districts independent of application volume
- Correction requests exhibit substantially higher SLA breach rates than new registrations
- Volume vs performance risk matrix identifies high-risk districts requiring immediate intervention

## Tools Used
- Python (Pandas, NumPy)
- SQL (SQLite)
- Power BI
