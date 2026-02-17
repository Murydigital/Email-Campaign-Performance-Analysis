# SQL Analysis

This folder contains SQL queries for analyzing email campaign performance data from Salesforce Marketing Cloud.

## 📄 Files

- **`campaign_analysis_queries.sql`** - Complete analysis with 10 queries covering performance metrics, segmentation, and optimization insights

## 🗄️ Database Structure

**Database:** `email_campaigns`  
**Table:** `campaigns_analysed`  
**Records:** 20 campaigns  
**Period:** February - December 2025  
**Total Emails Sent:** 947,000  
**Total Revenue:** £1,142,300

### Table Schema

```sql
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
