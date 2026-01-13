-- =========================================================
-- Electoral Operations SLA & Bottleneck Analysis
-- =========================================================
-- Database: electoral_operations.db
-- Table: voter_applications
--
-- This SQL file contains the core analytical queries used
-- to identify SLA breaches, processing delays, and
-- operational bottlenecks across districts and form types.
-- =========================================================


-- ---------------------------------------------------------
-- 1. Overall Application Volume
-- Business Question:
-- How many applications are being processed in total?
-- ---------------------------------------------------------
SELECT
    COUNT(*) AS total_applications
FROM voter_applications;


-- ---------------------------------------------------------
-- 2. Application Volume by District
-- Business Question:
-- Which districts handle the highest application load?
-- ---------------------------------------------------------
SELECT
    district,
    COUNT(*) AS total_applications
FROM voter_applications
GROUP BY district
ORDER BY total_applications DESC;


-- ---------------------------------------------------------
-- 3. Average Processing Time by District
-- Business Question:
-- Which districts take the longest to process applications?
-- ---------------------------------------------------------
SELECT
    district,
    ROUND(AVG(processing_days), 2) AS avg_processing_days
FROM voter_applications
GROUP BY district
ORDER BY avg_processing_days DESC;


-- ---------------------------------------------------------
-- 4. SLA Breach Rate by District
-- SLA Definition:
-- Processing time > 7 days is considered an SLA breach
-- Business Question:
-- Which districts violate SLAs most frequently?
-- ---------------------------------------------------------
SELECT
    district,
    COUNT(*) AS total_applications,
    SUM(CASE WHEN processing_days > 7 THEN 1 ELSE 0 END) AS sla_breaches,
    ROUND(
        100.0 * SUM(CASE WHEN processing_days > 7 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS sla_breach_percentage
FROM voter_applications
GROUP BY district
ORDER BY sla_breach_percentage DESC;


-- ---------------------------------------------------------
-- 5. SLA Breach Rate by Form Type
-- Business Question:
-- Are correction requests more prone to SLA breaches
-- compared to new registrations?
-- ---------------------------------------------------------
SELECT
    form_type,
    COUNT(*) AS total_applications,
    SUM(CASE WHEN processing_days > 7 THEN 1 ELSE 0 END) AS sla_breaches,
    ROUND(
        100.0 * SUM(CASE WHEN processing_days > 7 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS sla_breach_percentage
FROM voter_applications
GROUP BY form_type
ORDER BY sla_breach_percentage DESC;
