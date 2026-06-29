-- ============================================
-- Project: Healthcare Analytics Project
-- File: 03_bigquery_analysis.sql
-- Description: Cloud-based analytics using BigQuery
-- Author: Navin
-- ============================================

-- Revenue by Insurance
SELECT
     insurance_type,
     ROUND(SUM(charge_amount),2) AS total_revenue
FROM`healthcare-analytics-bq.healthcare_analytics_bq.claims_data_bq`
GROUP BY insurance_type
ORDER BY total_revenue DESC;

-- Top Diagnoses
SELECT
    diagnosis,
    COUNT(*) AS total_cases
FROM `healthcare-analytics-bq.healthcare_analytics_bq.claims_data_bq`
GROUP BY diagnosis
ORDER BY total_cases DESC;

-- Monthly Trend
SELECT
    EXTRACT(YEAR FROM service_date) AS year,
    EXTRACT(MONTH FROM service_date) AS month,
    COUNT(*) AS total_claims
FROM `healthcare-analytics-bq.healthcare_analytics_bq.claims_data_bq`
GROUP BY year, month
ORDER BY year, month;

-- Rank Provider As Per Charge
SELECT
    provider_name,
    charge_amount,
    RANK() OVER (ORDER BY charge_amount DESC) AS rnk
FROM `healthcare-analytics-bq.healthcare_analytics_bq.claims_data_bq`;

-- Running Total
SELECT
     service_date,
     SUM(charge_amount) AS daily_revenue,
     SUM(SUM(charge_amount)) OVER (ORDER BY service_date) AS running_total
FROM `healthcare-analytics-bq.healthcare_analytics_bq.claims_data_bq`
GROUP BY service_date;




