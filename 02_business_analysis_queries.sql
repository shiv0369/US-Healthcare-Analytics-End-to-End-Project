-- ============================================
-- Project: Healthcare Analytics Project
-- File: 02_business_analysis_queries.sql
-- Description: Business Insights using SQL Queries
-- Author: Navin
-- ============================================

USE healthcare_dw;

-- Total Revenue by Insurance Type
SELECT 
     di.insurance_type,
     ROUND(SUM(fc.charge_amount),2) AS total_revenue
FROM fact_claim_transactions fc 
JOIN dim_insurances di 
	ON fc.insurance_key = di.insurance_key 
GROUP BY di.insurance_type
ORDER BY total_revenue DESC;

-- Top 5 Diagnoses
SELECT 
     dd.diagnosis_name,
     COUNT(fc.claim_id) AS total_claims
FROM fact_claim_transactions fc 
JOIN dim_diagnoses dd 
    ON fc.diagnosis_key = dd.diagnosis_key
GROUP BY dd.diagnosis_name 
ORDER BY total_claims DESC 
LIMIT 5;

-- Top Providers by Revenue
SELECT
     dp.provider_name,
     SUM(fc.charge_amount) AS total_revenue
FROM fact_claim_transactions fc
JOIN dim_providers dp
    ON fc.provider_key = dp.provider_key
GROUP BY dp.provider_name
ORDER BY total_revenue DESC;

-- Monthly Trend of Claims 
SELECT
     dt.year,
     dt.month,
     COUNT(fc.claim_id) AS total_claims
FROM fact_claim_transactions fc 
JOIN dim_dates dt 
    ON fc.date_key = dt.date_key
GROUP BY dt.year, dt.month
ORDER BY dt.year, dt.month;

-- Average Payment by Insurance
SELECT 
    di.insurance_type,
    ROUND(AVG(fc.payment_amount),2) AS avg_payment
FROM fact_claim_transactions fc
JOIN dim_insurances di 
    ON fc.insurance_key = di.insurance_key
GROUP BY di.insurance_type;

-- Profit Analysis 
SELECT 
     dp.provider_name,
     ROUND(SUM(fc.profit),2) AS total_profit 
FROM fact_claim_transactions fc 
JOIN dim_providers dp 
    ON fc.provider_key = dp.provider_key 
GROUP BY dp.provider_name
ORDER BY total_profit DESC;

