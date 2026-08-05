# HR Workforce Analytics (2000–2020)

> **An end-to-end HR analytics project exploring workforce growth, employee distribution, and turnover trends using SQL and Microsoft Power BI.**

---

## Project Overview

This project analyzes HR workforce data spanning **2000 to 2020** to evaluate workforce growth, hiring trends, employee demographics, and turnover patterns. The objective is to transform raw HR data into meaningful business insights that support strategic workforce planning and employee retention.

The project demonstrates the complete analytics workflow, including data cleaning, SQL-based analysis, dashboard development, and business reporting.

---

## Executive Summary

The analysis examined employee workforce data to identify hiring patterns, workforce composition, and turnover trends across multiple business dimensions.

The findings indicate that the organization has maintained a healthy employee retention rate over the study period, contributing to reduced recruitment costs and stable workforce growth. However, younger employees (18–24 years) exhibit considerably higher turnover rates, suggesting opportunities to strengthen early-career retention initiatives.

The analysis also identified department-specific turnover differences that warrant further investigation to improve long-term employee retention.

---

## Business Problem

Employee turnover directly affects recruitment costs, organizational knowledge retention, and operational efficiency. Understanding workforce demographics and turnover behaviour enables organizations to make informed human resource decisions.

This project answers the following business questions:

* How has workforce hiring changed between 2000 and 2020?
* Which states employ the largest workforce?
* Which demographic groups dominate the organization?
* Which departments have the largest employee population?
* How does gender distribution vary across departments?
* Which age groups experience the highest turnover?
* Which job titles have the highest turnover rates?

---

## Dataset Overview

The dataset contains **18,000+ employee records** collected between **2000 and 2020**.

### Key Attributes

* Employee ID
* Employee Name
* Birth Date
* Gender
* Race
* Department
* Job Title
* Hire Date
* Termination Date
* City
* State

---

## Project Workflow

### 1. Data Understanding

Microsoft Excel was used for preliminary exploration to understand the dataset structure, identify inconsistencies, and assess data quality.

### 2. Data Cleaning (SQL)

The dataset was prepared using SQL through:

* Standardizing date formats
* Removing duplicate records
* Correcting inconsistent values
* Creating analytical variables
* Preparing the dataset for reporting

### 3. Data Analysis

SQL queries were used to investigate workforce metrics, employee demographics, hiring trends, and turnover rates.

### 4. Data Visualization

Microsoft Power BI was used to build an interactive dashboard that communicates workforce performance through business-focused visualizations.

---

# Dashboard Preview

> **Workforce Hiring Trend**

*(Insert Hiring Trend dashboard image here)*

---

> **Employee State Distribution**

*(Insert State Distribution dashboard image here)*

---

> **Employee Demographics**

*(Insert Employee Distribution dashboard image here)*

---

> **Department & Age Group Turnover Analysis**

*(Insert Turnover Analysis dashboard image here)*

---

## Key Findings

### Workforce Growth

* Hiring increased significantly during the organization's early years before stabilizing into a consistent growth pattern.
* The stable hiring trend suggests improved employee retention over time.

### Geographic Distribution

* Ohio recorded the highest employee population.
* Wisconsin had the smallest workforce representation.

### Workforce Demographics

* White employees represented the largest racial group.
* Engineering employed the largest workforce.
* Male employees constituted the majority across most departments.
* Employees aged **35–44** represented the largest workforce segment.

### Turnover Analysis

* The **Auditing** department recorded the highest departmental turnover rate.
* Employees aged **18–24** experienced the highest turnover.
* The **Executive Secretary** role exhibited the highest turnover among job titles.

---

## Business Insights

### Insight 1 — Sustainable Workforce Growth

The organization experienced rapid workforce expansion during its early years, followed by a stable hiring pattern. This trend suggests that existing employee retention strategies have contributed to maintaining a consistent workforce.

### Insight 2 — Early-Career Employee Retention

The highest turnover occurs among employees aged **18–24**, indicating an opportunity to improve onboarding, mentorship, career development, and graduate retention initiatives.

### Insight 3 — Departmental Turnover

The Auditing department demonstrates noticeably higher turnover than other departments. Further investigation into workload, career progression, employee engagement, and compensation may help identify the underlying causes.

---

## Recommendations

Based on the analysis, the following recommendations are proposed:

* Strengthen graduate and early-career employee development programs.
* Improve internship-to-employment conversion initiatives.
* Investigate factors contributing to high turnover within the Auditing department.
* Continue implementing the retention strategies that have supported stable workforce growth.

---

## Technologies Used

| Tool               | Purpose                                 |
| ------------------ | --------------------------------------- |
| SQL (MySQL)        | Data Cleaning & Analysis                |
| Microsoft Excel    | Data Exploration                        |
| Microsoft Power BI | Dashboard Development                   |
| Git & GitHub       | Version Control & Project Documentation |

---

## Repository Structure

```text
HR-Workforce-Analytics
│
├── Data/
│   └── HR_Employee_Data.csv
│
├── SQL/
│   ├── Data_Cleaning.sql
│   └── Exploratory_Analysis.sql
│
├── Dashboard/
│   └── HR_Workforce_Dashboard.pbix
│
├── Report/
│   └── HR_Workforce_Analysis.pdf
│
├── Images/
│   ├── hiring_trend.png
│   ├── employee_distribution.png
│   ├── state_distribution.png
│   └── turnover_dashboard.png
│
└── README.md
```

---

## Project Outcomes

This project demonstrates practical skills in:

* Business Problem Solving
* HR Analytics
* SQL Data Cleaning
* Exploratory Data Analysis
* Data Visualization
* Dashboard Design
* Business Reporting
* Data Storytelling

---

## Future Enhancements

Potential extensions to this project include:

* Predictive employee attrition modelling using Python.
* Workforce forecasting based on historical hiring trends.
* Automated ETL workflows for recurring HR reporting.
* Interactive drill-through dashboards with additional HR KPIs.

---

## Author

**Esther Gichuki**

Aspiring Data Analyst with a passion for transforming raw data into actionable business insights through SQL, Power BI, and data visualization.

**Connect with me on LinkedIn and explore more analytics projects on GitHub.**
