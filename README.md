# US Healthcare Analytics: End-to-End Data Analytics Project

## Project Overview

This project demonstrates a complete end-to-end data analytics solution using a simulated US healthcare claims dataset. The primary objective is to transform raw healthcare data into meaningful business insights through data cleaning, data modeling, SQL analysis, cloud analytics, and interactive dashboard development.

The project follows the complete analytics lifecycle, beginning with raw CSV files and ending with business-ready dashboards that help stakeholders understand financial performance, provider efficiency, insurance trends, and claim patterns. It showcases practical skills commonly required in data analyst and business intelligence roles.

---

## Project Objectives

The goal of this project is to build a scalable healthcare analytics solution that supports data-driven decision making. The project focuses on:

* Cleaning and preparing raw healthcare claims data for analysis.
* Designing a star schema data model for efficient reporting.
* Performing business analysis using SQL and window functions.
* Running cloud-based analytical queries using Google BigQuery.
* Building interactive Power BI dashboards to communicate business insights.

---

## Technologies Used

* Python
* Pandas
* NumPy
* MySQL
* Google BigQuery
* Power BI
* DAX

---

## Skills Demonstrated

* Data Cleaning and Preprocessing
* Data Transformation
* Data Modeling
* Star Schema Design
* SQL Query Development
* Window Functions
* Cloud Analytics
* Dashboard Development
* Business Intelligence
* Healthcare Data Analytics

---

## Business Problem

Healthcare organizations generate large volumes of claims data every day. Analyzing this information is essential for understanding financial performance, provider efficiency, insurance coverage, and patient care trends.

This project analyzes healthcare claims data to uncover meaningful patterns that support operational improvements, financial planning, and strategic business decisions.

---

## Data Model

The project follows a star schema design to improve query performance and simplify reporting.

### Fact Table

* fact_claim_transactions

### Dimension Tables

* providers
* diagnoses
* insurance
* dates

This structure enables efficient analytical queries while maintaining data integrity and scalability.

---

## Project Workflow

### Data Collection

Healthcare claims data was collected from CSV files containing transactional and reference information.

### Data Cleaning

The raw dataset was cleaned using Python by handling missing values, correcting data types, removing inconsistencies, and preparing the data for analysis.

### Data Modeling

A star schema was designed in MySQL to organize transactional and dimensional data for efficient reporting and business analysis.

### SQL Analysis

Business-focused SQL queries and window functions were developed to analyze provider performance, revenue, insurance trends, and claim activity.

### Cloud Analytics

The cleaned dataset was uploaded to Google BigQuery to perform scalable cloud-based analytical queries.

### Dashboard Development

An interactive Power BI dashboard was created to visualize key performance indicators and provide actionable business insights.

---

## Dashboard Overview

The Power BI dashboard provides a comprehensive view of healthcare operations through multiple analytical perspectives.

### Executive Overview

* Total Revenue
* Total Claims
* Total Profit
* Profit Margin

### Provider Performance

* Revenue by Provider
* Top Performing Providers
* Profit Analysis by Provider

### Diagnosis Analysis

* Most Common Diagnoses
* Revenue by Diagnosis
* Claim Distribution

### Insurance Analysis

* Revenue by Insurance Type
* Insurance Distribution
* Claims by Insurance Provider

### Time-Based Analysis

* Monthly Revenue Trend
* Claims Trend
* Growth Analysis Over Time

---

## Key Insights

The analysis produced several meaningful business insights:

* Revenue is distributed consistently across different insurance providers.
* A small group of providers generates a significant portion of total revenue.
* Diagnosis patterns remain relatively stable across the dataset.
* Revenue and claim volumes show consistent trends over time.
* Interactive dashboards enable quick identification of business opportunities and operational performance.

---

## Business Value

This project helps healthcare organizations:

* Monitor financial performance through key business metrics.
* Evaluate provider efficiency and contribution.
* Understand insurance claim distribution.
* Identify diagnosis trends and claim patterns.
* Support strategic planning through data-driven insights.
* Improve reporting with interactive business dashboards.

---

## Conclusion

This project demonstrates the complete workflow of a modern data analyst, from raw data preparation to business intelligence reporting. It combines Python for data preprocessing, MySQL for relational data modeling, Google BigQuery for cloud analytics, and Power BI for interactive dashboard development.

The project reflects practical industry skills in data analytics, SQL, cloud technologies, business intelligence, and healthcare reporting, making it a strong portfolio project for data analyst, business analyst, and analytics engineering roles.
