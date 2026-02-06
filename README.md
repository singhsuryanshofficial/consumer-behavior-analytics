# 📊 Consumer Behavior Analytics

## Overview
The **Consumer Behavior Analytics** project is an end-to-end business intelligence solution developed to analyze retail transaction data and convert it into actionable insights related to customer purchasing behavior, revenue drivers, and operational preferences.

The project demonstrates the **complete analytics lifecycle** — from raw data preparation to enterprise-grade dashboard deployment using **Power BI Desktop, Power BI Service, and Power BI App**, with dashboards designed for **both desktop and mobile consumption**.

This project reflects real-world business intelligence practices followed in large organizations and consulting environments.

---

## Business Problem
Retail organizations generate large volumes of transactional data; however, without structured analytics, it becomes difficult to derive meaningful insights for strategic decision-making.

Key business challenges addressed in this project include:

- Limited visibility into consumer purchasing behavior  
- Difficulty identifying high-value customer segments  
- Lack of clarity around promotion and subscription effectiveness  
- Fragmented reporting across departments  
- Absence of executive-ready dashboards  

---

## Business Objectives
The primary objectives of this project were to :

- Analyze consumer purchasing behavior  
- Identify revenue drivers and high-performing segments  
- Evaluate product and category performance  
- Measure promotion and subscription impact  
- Understand operational preferences such as payment and shipping methods  
- Deliver an enterprise-grade BI solution for decision-makers  

---

## Dataset Overview

### Data Source
Retail consumer transaction dataset

### Dataset Characteristics
- **Total Transactions:** 3,900  
- **Total Customers:** 3,900  
- **Granularity:** Transaction-level (one record per purchase)  
- **Final Attributes:** 23 analytical columns  

### Key Data Attributes
- Customer demographics (age, gender, age group)  
- Product details (item purchased, category, size, color)  
- Purchase amount and review rating  
- Promotion and subscription indicators  
- Payment method and shipping type  
- Behavioral metrics (previous purchases, purchase frequency)  

---

## End-to-End Analytics Architecture

```text
Raw Transaction Data
        ↓
Data Cleaning & Validation
        ↓
Feature Engineering
        ↓
SQL-Based Business Analysis
        ↓
Power BI Semantic Model
        ↓
Power BI Service Deployment
        ↓
Power BI App (Desktop & Mobile Views)
```

---

## Data Preparation & Feature Engineering

### Data Cleaning
- Validation of numeric ranges (age, ratings, purchase amount)
- Standardization of categorical values
- Handling of missing and inconsistent data
- Removal of redundant attributes

### Feature Engineering
To enable deeper consumer behavior analysis, the following business-driven features were created:

- Age Group Classification (Teen, Young Adult, Adult, Senior)
- Promotion Exposure Flag
- High-Value Transaction Flag
- Express Shipping Indicator
- Purchase Frequency Approximation
- Outlier Transaction Identification

These engineered features enhanced interpretability and supported advanced behavioral insights.

---

## Dashboard Design Overview

### Dashboard Name
**Consumer Behavior Analytics Dashboard**

### Design Principles
- Executive-first KPI design
- Consistent layout and navigation across pages
- Clean enterprise theme
- Interactive slicers for dynamic exploration
- Page-level analytical storytelling

### Accessibility
- **Desktop View:** Designed for detailed analysis and exploration  
- **Mobile View:** Separately optimized for executive and on-the-go consumption  

The dashboard was deployed through **Power BI App**, providing a secure and user-friendly analytics consumption layer.

---

## Dashboard Pages

### Executive Summary
- Overall revenue performance
- Key KPIs and metrics
- High-level consumer segmentation
- Promotion utilization overview

![Desktop Page 1](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Desktop%20Page%201.png)

### Revenue Analysis
- Revenue by category and season
- Revenue contribution by gender and age group
- Subscription impact on spending

![Desktop Page 2](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Desktop%20Page%202.png)

### Product Performance
- Top revenue-generating products
- Product rating analysis
- Payment method preferences
- Shipping type impact on purchase value

![Desktop Page 3](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Desktop%20Page%203.png)

### Transaction-Level Analysis
- Detailed transaction table
- Multi-dimensional filtering
- Data validation and exploration support

![Desktop Page 4](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Desktop%20Page%204.png)

---

## Mobile Dashboard Experience

A dedicated mobile layout was developed to support executive-level consumption.

### Key Mobile Features
- KPI-first vertical layout
- Simplified visuals for clarity
- Optimized slicer placement
- Consistent branding with desktop dashboards

This ensures accessibility of insights anytime through the Power BI mobile application.

![Mobile Page 1](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Mobile%20Page%201.jpg)

![Mobile Page 2](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Mobile%20Page%202.jpg)

![Mobile Page 3](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Mobile%20Page%203.jpg)

![Mobile Page 4](https://raw.githubusercontent.com/singhsuryanshofficial/consumer-behavior-analytics/main/5.%20PowerBI%20dashboard%20screenshots/Mobile%20Page%204.jpg)

---

## Key Business Insights
- Clothing and Accessories contribute the highest share of revenue
- Adult and Young Adult segments represent the most valuable customer groups
- Promotional offers increase engagement without reducing average order value
- Subscription customers demonstrate stronger purchasing behavior
- Express shipping correlates with higher purchase values
- Digital payment methods dominate transaction volume

---

## Business Recommendations

### Marketing Strategy
- Implement targeted promotions for high-value customers
- Reduce blanket discounting strategies

### Product Strategy
- Prioritize inventory planning for top-performing categories
- Leverage high-rated products for bundling and cross-selling

### Customer Engagement
- Convert repeat buyers into subscribers using loyalty incentives
- Personalize offers using behavioral indicators

### Operational Optimization
- Promote express shipping as a premium service
- Strengthen partnerships with preferred digital payment providers

---

## Tools & Technologies
- **Python** – Data cleaning and preparation  
- **SQL** – Business logic and analytical queries  
- **Power BI Desktop** – Data modeling and visualization  
- **Power BI Service** – Report publishing and sharing  
- **Power BI App** – Enterprise dashboard consumption  
- **Gamma AI** – Executive presentation design  

---

## Deliverables
- Interactive Power BI Dashboard (Desktop View)
- Mobile-Optimized Dashboard Layout
- Power BI App Deployment
- Executive Presentation (Gamma AI)
- Project Documentation

---

## Limitations & Assumptions
- Dataset does not include transaction timestamps
- Purchase frequency metrics are approximated
- Analysis is transaction-focused and does not include full customer lifetime modeling

---

## Conclusion
This project demonstrates how structured analytics can transform raw transaction data into enterprise-grade business intelligence.

By integrating data engineering, SQL-based analysis, and Power BI visualization, the **Consumer Behavior Analytics** solution enables leadership teams to gain clear visibility into revenue drivers, consumer behavior, and strategic growth opportunities.

---

## Author
**Suryansh Singh**  
Data Analyst | SQL • Python • Excel • Power BI | Business Intelligence | Academic Operations & Analytics
