-- =====================================================
-- EMAIL CAMPAIGN PERFORMANCE ANALYSIS
-- Salesforce Marketing Cloud Data Analytics
-- Author: Murydigital
-- Date: February 2026
-- Database: MySQL 8.0
-- Dataset: campaigns_analysed (20 campaigns, 947K emails, £1.14M revenue)
-- =====================================================

-- =====================================================
-- DATABASE AND TABLE SETUP
-- =====================================================

CREATE DATABASE IF NOT EXISTS email_campaigns;
USE email_campaigns;

-- Create table structure for campaign data
DROP TABLE IF EXISTS campaigns_analysed;

CREATE TABLE campaigns_analysed (
    Campaign_ID VARCHAR(20),
    Campaign_Name VARCHAR(100),
    Send_Date VARCHAR(20),
    Day_of_Week VARCHAR(20),
    Segment VARCHAR(50),
    Subject_Line_Type VARCHAR(50),
    Emails_Sent INT,
    Opens INT,
    Clicks INT,
    Bounces INT,
    Unsubscribes INT,
    Conversions INT,
    Revenue DECIMAL(10,2),
    Open_Rate DECIMAL(10,2),
    CTR DECIMAL(10,2),
    Click_to_Open DECIMAL(10,2),
    Conversion_Rate DECIMAL(10,2),
    Revenue_Per_Email DECIMAL(10,2),
    Revenue_Per_Conversion DECIMAL(10,2),
    Month VARCHAR(20)
);

-- Note: Data can be imported from campaigns_analysed.csv
-- LOAD DATA LOCAL INFILE 'path/to/campaigns_analysed.csv'
-- INTO TABLE campaigns_analysed
-- FIELDS TERMINATED BY ',' ENCLOSED BY '"'
-- LINES TERMINATED BY '\n' IGNORE 1 ROWS;


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
    ROUND((Opens * 100.0 / Emails_Sent), 2) AS Open_Rate_Percent,
    Clicks,
    ROUND((Clicks * 100.0 / Opens), 2) AS CTR_Percent,
    Conversions,
    ROUND((Conversions * 100.0 / Clicks), 2) AS Conversion_Rate_Percent,
    Revenue,
    ROUND((Revenue / Emails_Sent), 2) AS Revenue_Per_Email
FROM campaigns_analysed
ORDER BY Revenue DESC
LIMIT 10;

-- Expected Results: Top 10 campaigns by revenue
-- Top Performer: Black Friday (£144,400 revenue, 35% open rate)
-- Insight: Holiday promotional campaigns generate 3x average revenue


-- =====================================================
-- QUERY 2: Segment Performance Comparison
-- Purpose: Identify which segments deliver best ROI
-- Business Use: Audience targeting, budget allocation
-- =====================================================

SELECT 
    Segment,
    COUNT(*) AS Total_Campaigns,
    SUM(Emails_Sent) AS Total_Emails_Sent,
    ROUND(AVG(Open_Rate), 2) AS Avg_Open_Rate_Percent,
    ROUND(AVG(CTR), 2) AS Avg_CTR_Percent,
    ROUND(AVG(Conversion_Rate), 2) AS Avg_Conversion_Rate_Percent,
    SUM(Revenue) AS Total_Revenue,
    ROUND(SUM(Revenue) / SUM(Emails_Sent), 2) AS Revenue_Per_Send
FROM campaigns_analysed
GROUP BY Segment
ORDER BY Total_Revenue DESC;

-- Expected Results: 5 segments ranked by revenue
-- Top Segment: All Subscribers (£689,200, 9 campaigns)
-- Highest Engagement: VIP Customers (36% open rate, £2.59/email)
-- Insight: VIP segment has 2.4x higher revenue per email


-- =====================================================
-- QUERY 3: Subject Line Type Effectiveness
-- Purpose: A/B testing insights for optimization
-- Business Use: Email copywriting strategy
-- =====================================================

SELECT 
    Subject_Line_Type,
    COUNT(*) AS Campaign_Count,
    ROUND(AVG(Open_Rate), 2) AS Avg_Open_Rate,
    ROUND(AVG(CTR), 2) AS Avg_CTR,
    ROUND(AVG(Conversion_Rate), 2) AS Avg_Conversion_Rate,
    SUM(Revenue) AS Total_Revenue,
    ROUND(AVG(Revenue_Per_Email), 2) AS Avg_Revenue_Per_Email
FROM campaigns_analysed
GROUP BY Subject_Line_Type
ORDER BY Avg_Open_Rate DESC;

-- Expected Results: 7 subject line types
-- Best Open Rate: Exclusive Offer (36%)
-- Highest Revenue: Discount Offer (£529,200 from 6 campaigns)
-- Insight: Urgency + discount drives best results


-- =====================================================
-- QUERY 4: Monthly Performance Trends
-- Purpose: Time-series analysis for seasonality
-- Business Use: Campaign calendar planning, forecasting
-- =====================================================

SELECT 
    Month,
    COUNT(*) AS Campaigns_Sent,
    SUM(Emails_Sent) AS Total_Emails,
    ROUND(AVG(Open_Rate), 2) AS Avg_Open_Rate,
    ROUND(AVG(CTR), 2) AS Avg_CTR,
    SUM(Conversions) AS Total_Conversions,
    SUM(Revenue) AS Total_Revenue
FROM campaigns_analysed
GROUP BY Month
ORDER BY 
    CASE 
        WHEN Month LIKE 'Aug%' THEN 1
        WHEN Month LIKE 'Sep%' THEN 2
        WHEN Month LIKE 'Oct%' THEN 3
        WHEN Month LIKE 'Nov%' THEN 4
        WHEN Month LIKE 'Dec%' THEN 5
        WHEN Month LIKE 'Feb%' THEN 6
        ELSE 7
    END;

-- Expected Results: 9 months of data
-- Peak Month: November (£267,000 revenue, 35% open rate)
-- Highest Volume: September (205K emails, 5 campaigns)
-- Insight: Q4 generates 54% of annual revenue


-- =====================================================
-- QUERY 5: Top 5 Revenue-Generating Campaigns
-- Purpose: Identify success patterns for replication
-- Business Use: Best practice identification
-- =====================================================

SELECT 
    Campaign_ID,
    Campaign_Name,
    Segment,
    Subject_Line_Type,
    Revenue,
    ROUND(Open_Rate, 2) AS Open_Rate,
    ROUND(CTR, 2) AS CTR,
    ROUND(Conversion_Rate, 2) AS Conversion_Rate
FROM campaigns_analysed
ORDER BY Revenue DESC
LIMIT 5;

-- Expected Results: Top 5 campaigns
-- #1: Black Friday (£144,400)
-- #2: Cyber Monday (£138,600)
-- #3: Black Friday Preview (£122,600)
-- Insight: All top 5 use discount offers during holiday season


-- =====================================================
-- QUERY 6: Campaign Engagement Funnel
-- Purpose: Analyze conversion funnel drop-off rates
-- Business Use: CRO, bottleneck identification
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

-- Expected Results: Funnel metrics
-- Emails: 947,000 (100%)
-- Opens: 293,450 (31%) - Above industry 22%
-- Clicks: 72,025 (7.6%) - Above industry 3-5%
-- Conversions: 6,470 (0.68%) - Above industry 0.5%
-- Insight: All stages perform above industry benchmarks


-- =====================================================
-- QUERY 7: Underperforming Campaigns
-- Purpose: Identify optimization opportunities
-- Business Use: Performance improvement
-- =====================================================

SELECT 
    Campaign_ID,
    Campaign_Name,
    Segment,
    Subject_Line_Type,
    ROUND(Open_Rate, 2) AS Open_Rate,
    ROUND(CTR, 2) AS CTR,
    Revenue
FROM campaigns_analysed
WHERE Open_Rate < 30 OR CTR < 20
ORDER BY Revenue ASC
LIMIT 5;

-- Expected Results: Campaigns below benchmarks
-- Lowest: Win-back campaign (20% open, £9,800 revenue)
-- Insight: Re-engagement campaigns need subject line optimization


-- =====================================================
-- QUERY 8: Revenue by Day of Week
-- Purpose: Identify optimal send days
-- Business Use: Send time optimization
-- =====================================================

SELECT 
    Day_of_Week,
    COUNT(*) AS Campaign_Count,
    SUM(Emails_Sent) AS Total_Emails,
    ROUND(AVG(Open_Rate), 2) AS Avg_Open_Rate,
    SUM(Revenue) AS Total_Revenue
FROM campaigns_analysed
GROUP BY Day_of_Week
ORDER BY Total_Revenue DESC;

-- Expected Results: All campaigns sent on Tuesday
-- Tuesday: 20 campaigns, 31% open rate, £1.14M revenue
-- Insight: Maintain Tuesday send strategy (industry best practice)


-- =====================================================
-- QUERY 9: High-Value vs Low-Value Campaigns
-- Purpose: Compare revenue tier characteristics
-- Business Use: Resource allocation strategy
-- =====================================================

SELECT 
    CASE 
        WHEN Revenue >= 100000 THEN 'High Value (£100k+)'
        WHEN Revenue >= 50000 THEN 'Medium Value (£50k-100k)'
        ELSE 'Low Value (<£50k)'
    END AS Campaign_Tier,
    COUNT(*) AS Campaign_Count,
    ROUND(AVG(Open_Rate), 2) AS Avg_Open_Rate,
    ROUND(AVG(CTR), 2) AS Avg_CTR,
    SUM(Revenue) AS Total_Revenue
FROM campaigns_analysed
GROUP BY Campaign_Tier
ORDER BY Total_Revenue DESC;

-- Expected Results: 3 revenue tiers
-- High Value: 3 campaigns (15%), £458,000 revenue (40%)
-- Medium Value: 4 campaigns (20%), £343,200 revenue (30%)
-- Low Value: 13 campaigns (65%), £341,100 revenue (30%)
-- Insight: High-value campaigns generate 40% of revenue from 15% of sends


-- =====================================================
-- QUERY 10: List Size vs Revenue Analysis
-- Purpose: Determine optimal segment size
-- Business Use: List growth and segmentation strategy
-- =====================================================

SELECT 
    CASE 
        WHEN Emails_Sent >= 60000 THEN 'Large List (60k+)'
        WHEN Emails_Sent >= 40000 THEN 'Medium List (40k-60k)'
        ELSE 'Small List (<40k)'
    END AS List_Size,
    COUNT(*) AS Campaign_Count,
    ROUND(AVG(Open_Rate), 2) AS Avg_Open_Rate,
    ROUND(AVG(Revenue_Per_Email), 2) AS Avg_Revenue_Per_Email,
    SUM(Revenue) AS Total_Revenue
FROM campaigns_analysed
GROUP BY List_Size
ORDER BY Avg_Revenue_Per_Email DESC;

-- Expected Results: Performance by list size
-- Medium Lists: £1.35/email (best performance)
-- Large Lists: £1.22/email (list fatigue at 60k+)
-- Small Lists: £0.65/email (strategic segments)
-- Insight: Optimal segment size is 40k-60k for engagement


-- =====================================================
-- END OF ANALYSIS
-- Total Queries: 10
-- Coverage: Performance, Segmentation, Optimization, Trends
-- =====================================================
