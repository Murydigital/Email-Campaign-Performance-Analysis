

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

---

## 📬 Contact

* **GitHub:** [Murydigital](https://github.com/Murydigital)
* **LinkedIn:** [Your Profile Link Here]

```
