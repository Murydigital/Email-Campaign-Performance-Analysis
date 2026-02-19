-- =====================================================
-- EMAIL CAMPAIGN PERFORMANCE ANALYSIS
-- Salesforce Marketing Cloud Data Analytics
-- Author: Murydigital
-- Date: February 2026
-- Database: MySQL 8.0
-- Dataset: campaigns_analysed (20 campaigns, 947K emails, £1,142,300 revenue)
-- =====================================================

-- =====================================================
-- DATABASE AND TABLE SETUP
-- =====================================================

CREATE DATABASE IF NOT EXISTS Portafolio;
USE Portafolio;

-- Create table structure for campaign data
-- Using FLOAT for rates to prevent range errors during import
DROP TABLE IF EXISTS campaigns_analysed;

CREATE TABLE campaigns_analysed (
    Campaign_ID VARCHAR(20) PRIMARY KEY,
    Campaign_Name VARCHAR(100),
    Send_Date DATE,
    Day_of_Week VARCHAR(20),
    Segment VARCHAR(50),
    Subject_Line_Type VARCHAR(50),
    Emails_Sent INT,
    Opens INT,
    Clicks INT,
    Bounces INT,
    Unsubscribes INT,
    Conversions INT,
    Revenue DECIMAL(15,2),
    Open_Rate FLOAT, 
    CTR FLOAT,
    Click_to_Open FLOAT,
    Conversion_Rate FLOAT,
    Revenue_Per_Email DECIMAL(10,2),
    Revenue_Per_Conversion DECIMAL(10,2),
    Month VARCHAR(20)
);

-- Note: Data is imported via INSERT INTO or Table Data Import Wizard
-- Verify Total Revenue matches: 1142300.00
-- SELECT SUM(Revenue) FROM campaigns_analysed;


-- =====================================================
-- QUERY 1: Overall Campaign Performance Dashboard
-- Purpose: Executive summary with key KPIs
-- Business Use: Performance overview, board reporting
-- =====================================================

SELECT 
    Campaign_ID,
    Campaign_Name,
    Send_Date,
    Segment,
    Subject_Line_Type,
    Emails_Sent,
    Opens,
    ROUND((Open_Rate * 100), 2) AS Open_Rate_Percent,
    Clicks,
    ROUND((CTR * 100), 2) AS CTR_Percent,
    Conversions,
    Revenue,
    ROUND((Revenue / Emails_Sent), 2) AS Revenue_Per_Email
FROM campaigns_analysed
ORDER BY Revenue DESC
LIMIT 10;

-- Expected Results: Top 10 campaigns by revenue
-- Top Performer: Black Friday (£144,400 revenue, 35% open rate)


-- =====================================================
-- QUERY 2: Segment Performance Comparison
-- Purpose: Identify which segments deliver best ROI
-- Business Use: Audience targeting, budget allocation
-- =====================================================

SELECT 
    Segment,
    COUNT(*) AS Total_Campaigns,
    SUM(Emails_Sent) AS Total_Emails_Sent,
    ROUND(AVG(Open_Rate) * 100, 2) AS Avg_Open_Rate_Percent,
    ROUND(AVG(CTR) * 100, 2) AS Avg_CTR_Percent,
    SUM(Revenue) AS Total_Revenue,
    ROUND(SUM(Revenue) / SUM(Emails_Sent), 2) AS Revenue_Per_Send
FROM campaigns_analysed
GROUP BY Segment
ORDER BY Total_Revenue DESC;

-- Insight: VIP segment has highest efficiency (£2.59/email)


-- =====================================================
-- QUERY 3: Subject Line Type Effectiveness
-- Purpose: Messaging insights for optimization
-- Business Use: Email copywriting strategy
-- =====================================================

SELECT 
    Subject_Line_Type,
    COUNT(*) AS Campaign_Count,
    ROUND(AVG(Open_Rate) * 100, 2) AS Avg_Open_Rate,
    ROUND(AVG(CTR) * 100, 2) AS Avg_CTR,
    SUM(Revenue) AS Total_Revenue,
    ROUND(AVG(Revenue_Per_Email), 2) AS Avg_Revenue_Per_Email
FROM campaigns_analysed
GROUP BY Subject_Line_Type
ORDER BY Avg_Open_Rate DESC;


-- =====================================================
-- QUERY 4: Monthly Performance Trends
-- Purpose: Time-series analysis for seasonality
-- Business Use: Campaign calendar planning
-- =====================================================

SELECT 
    Month,
    COUNT(*) AS Campaigns_Sent,
    SUM(Emails_Sent) AS Total_Emails,
    ROUND(AVG(Open_Rate) * 100, 2) AS Avg_Open_Rate,
    SUM(Revenue) AS Total_Revenue
FROM campaigns_analysed
GROUP BY Month
ORDER BY 
    CASE 
        WHEN Month LIKE 'May%' THEN 1
        WHEN Month LIKE 'Aug%' THEN 2
        WHEN Month LIKE 'Sep%' THEN 3
        WHEN Month LIKE 'Oct%' THEN 4
        WHEN Month LIKE 'Nov%' THEN 5
        WHEN Month LIKE 'Dec%' THEN 6
        ELSE 7
    END;

-- Insight: December is the peak month at £383,000


-- =====================================================
-- QUERY 5: Top 5 Revenue-Generating Campaigns
-- Purpose: Success pattern replication
-- =====================================================

SELECT 
    Campaign_Name,
    Segment,
    Subject_Line_Type,
    Revenue,
    ROUND(Open_Rate * 100, 2) AS Open_Rate_Pct
FROM campaigns_analysed
ORDER BY Revenue DESC
LIMIT 5;


-- =====================================================
-- QUERY 6: Campaign Engagement Funnel
-- Purpose: Analyze funnel drop-off rates across all 20 campaigns
-- =====================================================

SELECT 
    'Total Emails Sent' AS Funnel_Stage,
    SUM(Emails_Sent) AS Count,
    '100%' AS Percent
FROM campaigns_analysed

UNION ALL

SELECT 
    'Total Opens',
    SUM(Opens),
    CONCAT(ROUND(SUM(Opens) * 100.0 / SUM(Emails_Sent), 2), '%')
FROM campaigns_analysed

UNION ALL

SELECT 
    'Total Clicks',
    SUM(Clicks),
    CONCAT(ROUND(SUM(Clicks) * 100.0 / SUM(Emails_Sent), 2), '%')
FROM campaigns_analysed

UNION ALL

SELECT 
    'Total Conversions',
    SUM(Conversions),
    CONCAT(ROUND(SUM(Conversions) * 100.0 / SUM(Emails_Sent), 2), '%')
FROM campaigns_analysed;


-- =====================================================
-- QUERY 7: Underperforming Campaigns
-- Purpose: Identify optimization opportunities
-- Benchmark: Open Rate < 30% or CTR < 23%
-- =====================================================

SELECT 
    Campaign_Name,
    Segment,
    ROUND(Open_Rate * 100, 2) AS Open_Rate_Pct,
    ROUND(CTR * 100, 2) AS CTR_Pct,
    Revenue
FROM campaigns_analysed
WHERE Open_Rate < 0.30 OR CTR < 0.23
ORDER BY Revenue ASC;


-- =====================================================
-- QUERY 8: Revenue by Day of Week
-- Purpose: Identify optimal send days
-- =====================================================

SELECT 
    Day_of_Week,
    COUNT(*) AS Campaign_Count,
    SUM(Revenue) AS Total_Revenue
FROM campaigns_analysed
GROUP BY Day_of_Week;


-- =====================================================
-- QUERY 9: High-Value vs Low-Value Campaigns
-- Purpose: Compare revenue tier characteristics
-- =====================================================

SELECT 
    CASE 
        WHEN Revenue >= 100000 THEN 'High Value (£100k+)'
        WHEN Revenue >= 50000 THEN 'Medium Value (£50k-100k)'
        ELSE 'Low Value (<£50k)'
    END AS Campaign_Tier,
    COUNT(*) AS Campaign_Count,
    SUM(Revenue) AS Total_Revenue,
    ROUND(AVG(Open_Rate) * 100, 2) AS Avg_Open_Rate
FROM campaigns_analysed
GROUP BY Campaign_Tier
ORDER BY Total_Revenue DESC;


-- =====================================================
-- QUERY 10: List Size vs Revenue Analysis
-- Purpose: Determine optimal segment size
-- =====================================================

SELECT 
    CASE 
        WHEN Emails_Sent >= 60000 THEN 'Large List (60k+)'
        WHEN Emails_Sent >= 40000 THEN 'Medium List (40k-60k)'
        ELSE 'Small List (<40k)'
    END AS List_Size_Tier,
    COUNT(*) AS Campaign_Count,
    ROUND(SUM(Revenue) / SUM(Emails_Sent), 2) AS Revenue_Per_Email,
    SUM(Revenue) AS Total_Revenue
FROM campaigns_analysed
GROUP BY List_Size_Tier
ORDER BY Revenue_Per_Email DESC;


-- =====================================================
-- END OF ANALYSIS
-- =====================================================
