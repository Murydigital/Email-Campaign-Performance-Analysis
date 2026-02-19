# 📧 Email Campaign Performance Analysis

**Salesforce Marketing Cloud | SQL | Excel | Data Analytics Portfolio**



![Status](https://img.shields.io/badge/Status-Complete-green) ![Data](https://img.shields.io/badge/Database-MySQL-blue) ![Analysis](https://img.shields.io/badge/Tools-Excel-forestgreen)



---



## 📊 Executive Summary

This project analyzes **20 email marketing campaigns** sent between **May and December 2025**. By cleaning raw exports and engineering a MySQL database pipeline, I identified key performance drivers that generated over **£1.14M in revenue**.



### 🚀 Key Performance Indicators (KPIs)

* **Total Revenue:** £1,142,300

* **Total Emails Sent:** 947,000

* **Average Open Rate:** 31.0%

* **Average CTR:** 24.0%

* **Top Campaign:** Black Friday (£144,400)



---



## 📁 Project Structure

Navigate through the project components using the links below:



* **[📂 Data Folder](./data/)**: Contains the finalized [campaigns_analysed.csv](./data/campaigns_analysed.csv).

* **[📂 SQL Folder](./sql/)**: Includes the [master analysis script](./sql/campaign_analysis_queries.sql) and [SQL README](./sql/README.md).

* **[📂 Excel Folder](./excel/)**: Contains the original [Excel Analysis Workbook](./excel/email_campaigns_analysis.xlsx).

* **[📂 Documentation](./documentation/)**: Detailed [Project Methodology](./documentation/project_methodology.md) and [Data Dictionary](./documentation/data_dictionary.md).



---



## 🗄️ Database Engineering

To move beyond spreadsheet limitations, I engineered a MySQL database named **`Portafolio`**. The schema utilizes specific data types (`FLOAT`, `DECIMAL`) to maintain financial precision and ensure high-performance querying.



### **Table Schema**

```sql

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



```



---



## 🔍 SQL Analysis & Insights



The [campaign_analysis_queries.sql](https://www.google.com/search?q=./sql/campaign_analysis_queries.sql) file contains 10 strategic queries designed to solve real-world business problems:



1. **High-Level Dashboard**: Summarizes total revenue and volume.

2. **Segment ROI**: Compares the efficiency of VIP vs. Broad Subscriber segments.

3. **Messaging Performance**: Evaluates Subject Line types (e.g., "Urgency" vs. "Exclusive Offer").

4. **Seasonality Trends**: Tracks chronological growth (**Peak: December £383,000**).

5. **Conversion Funnel**: Step-by-step drop-off analysis from Send to Conversion.



---



## ✅ Final Results & Business Value



| Segment | Total Revenue | Revenue Per Email | Performance Tier |

| --- | --- | --- | --- |

| **All Subscribers** | £689,200 | £1.22 | High Volume |

| **Engaged Customers** | £354,800 | £1.16 | High Loyalty |

| **VIP Customers** | £84,400 | £2.56 | **High Efficiency** |



**Strategic Conclusion:** The **VIP Segment** delivers **2.1x more revenue per email** than general subscribers. Future strategy should prioritize personalized, urgency-based subject lines for this group to maximize ROI.



---



## 🛠️ Technical Skills Demonstrated



* **Data Cleaning**: Handled malformed CSV data, removed currency symbols, and resolved decimal "Out of Range" errors.

* **Database Management**: Schema design, table optimization, and complex `INSERT` workflows in MySQL.

* **Excel Mastery**: Pivot Tables, advanced charting, and conditional formatting for "Source of Truth" verification.

* **Documentation**: Professional technical writing using Git-ready Markdown.



# 🗄️ SQL Case Study: Email Campaign Analysis
**Salesforce Marketing Cloud | Data Engineering | Business Intelligence**

![Status](https://img.shields.io/badge/Status-Complete-green) ![SQL](https://img.shields.io/badge/Language-MySQL-orange)

This folder documents the technical transformation of raw campaign exports into a relational database to solve complex marketing challenges.

---

## 🏗️ Database Setup & Schema
To maintain 100% accuracy with our "Source of Truth", I engineered a schema utilizing `FLOAT` and `DECIMAL` types to handle financial precision and prevent import errors.

```sql
CREATE TABLE campaigns_analysed (
    Campaign_ID VARCHAR(20) PRIMARY KEY,
    Campaign_Name VARCHAR(100),
    Send_Date DATE,
    Segment VARCHAR(50),
    Emails_Sent INT,
    Revenue DECIMAL(15,2),
    Open_Rate FLOAT, 
    CTR FLOAT,
    Month VARCHAR(20)
);

```

---

## 🔍 Featured Queries & Insights

### 1. Segment ROI Analysis (Efficiency vs. Volume)

**Business Question:** Which audience segment provides the highest return for every email sent?

```sql
SELECT 
    Segment,
    COUNT(*) AS Total_Campaigns,
    SUM(Emails_Sent) AS Total_Emails_Sent,
    ROUND(AVG(Open_Rate) * 100, 2) AS Avg_Open_Percent,
    SUM(Revenue) AS Total_Revenue,
    ROUND(SUM(Revenue) / SUM(Emails_Sent), 2) AS Revenue_Per_Send
FROM campaigns_analysed
GROUP BY Segment
ORDER BY Total_Revenue DESC;

```

#### 📸 MySQL Result Preview

> **💡 Business Insight:** > While "All Subscribers" drives the highest volume, the **VIP Segment** is significantly more efficient. Generating **£2.56 per email**, VIPs are **2.1x more profitable** than the average subscriber.

---

### 2. Monthly Performance Trends (Seasonality)

**Business Question:** When do we see the highest revenue peaks, and how should we plan our budget?

```sql
SELECT 
    Month,
    SUM(Revenue) AS Monthly_Revenue,
    SUM(Emails_Sent) AS Total_Emails,
    ROUND(AVG(Open_Rate) * 100, 2) AS Avg_Open_Rate
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
    END;

```

#### 📸 MySQL Result Preview

> **💡 Business Insight:** > The analysis reveals a massive Q4 surge. **December is the "Golden Month,"** generating **£383,000** in revenue. This peak was driven by "Last Minute Gift" urgency campaigns, indicating that marketing spend should be heavily weighted toward the end of the year.

---

### 3. The Engagement Funnel (Health Check)

**Business Question:** At what stage of the customer journey are we losing the most potential revenue?

```sql
SELECT 'Total Emails Sent' AS Stage, SUM(Emails_Sent) AS Count, '100%' AS Pct FROM campaigns_analysed
UNION ALL
SELECT 'Total Opens', SUM(Opens), CONCAT(ROUND(SUM(Opens)*100/SUM(Emails_Sent),2),'%') FROM campaigns_analysed
UNION ALL
SELECT 'Total Clicks', SUM(Clicks), CONCAT(ROUND(SUM(Clicks)*100/SUM(Emails_Sent),2),'%') FROM campaigns_analysed
UNION ALL
SELECT 'Total Conversions', SUM(Conversions), CONCAT(ROUND(SUM(Conversions)*100/SUM(Emails_Sent),2),'%') FROM campaigns_analysed;

```

#### 📸 MySQL Result Preview

> **💡 Business Insight:** > Our funnel health is strong with an **Average Open Rate of 31%**. However, the drop-off between Clicks and Conversions highlights a major opportunity for **Landing Page Optimization** to capture lost revenue.

---

## 🛠️ Technical Skills Demonstrated

* **Data Ingestion:** Optimized `INSERT INTO` workflows to handle specific data formatting requirements.
* **Query Optimization:** Utilized `CASE` statements and `UNION ALL` for sophisticated reporting.
* **Error Resolution:** Successfully resolved "Out of Range" errors by refining column data types.

---

[← Back to Main Repository](/Murydigital/Email-Campaign-Performance-Analysis/sql/README.md)


---



## 📬 Contact



* **GitHub:** [Murydigital](https://github.com/Murydigital)

* **LinkedIn:** [Your Profile Link Here]



```
