-- ============================================
-- Project: Healthcare Analytics Project
-- File: 01_data_modeling_star_schema.sql
-- Description: Star Schema Data Modeling using MySQL
-- Author: Navin
-- ============================================

-- Create Database 
CREATE DATABASE IF NOT EXISTS healthcare_dw;

-- Use Database
USE healthcare_dw;

-- DESCRIBE 
DESCRIBE claims_raw;

-- Fix Date Column
ALTER TABLE claims_raw 
MODIFY service_date DATE;

-- Dimension Tables
-- Provider Dimension
CREATE TABLE dim_providers (
    provider_key INT AUTO_INCREMENT PRIMARY KEY,
    provider_name VARCHAR(100)
);

-- Diagnosis Dimension
CREATE TABLE dim_diagnoses (
    diagnosis_key INT AUTO_INCREMENT PRIMARY KEY,
    diagnosis_name VARCHAR(100)
);

-- Insurance Dimension
CREATE TABLE dim_insurances (
    insurance_key INT AUTO_INCREMENT PRIMARY KEY,
    insurance_type VARCHAR(50)
);

-- Date Dimension
CREATE TABLE dim_dates (
    date_key INT AUTO_INCREMENT PRIMARY KEY,
    service_date DATE,
    year INT,
    month INT
);

-- Insert Into Dimensions
INSERT INTO dim_providers (provider_name)
SELECT DISTINCT provider_name FROM claims_raw;

INSERT INTO dim_diagnoses (diagnosis_name)
SELECT DISTINCT diagnosis FROM claims_raw;

INSERT INTO dim_insurances (insurance_type)
SELECT DISTINCT insurance_type FROM claims_raw;

INSERT INTO dim_dates (service_date, year, month)
SELECT DISTINCT service_date, year, month FROM claims_raw;

-- Fact Table Creation
CREATE TABLE fact_claim_transactions AS
SELECT 
    cr.claim_id,
    cr.patient_id,
    dp.provider_key,
    dd.diagnosis_key,
    di.insurance_key,
    dt.date_key,
    cr.charge_amount,
    cr.payment_amount,
    cr.profit
FROM claims_raw cr
JOIN dim_providers dp 
    ON cr.provider_name = dp.provider_name
JOIN dim_diagnoses dd 
    ON cr.diagnosis = dd.diagnosis_name
JOIN dim_insurances di 
    ON cr.insurance_type = di.insurance_type
JOIN dim_dates dt 
    ON cr.service_date = dt.service_date;
    
