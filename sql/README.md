
### 📂 Updated sql/README.md

```markdown
# 🗄️ SQL Analysis — Email Performance

This folder contains the SQL scripts used to build the database, import the cleaned campaign data, and perform a deep-dive analysis of marketing performance.

## 📄 Files
* **`campaign_analysis_queries.sql`**: Complete analysis with 10 queries covering performance metrics, segmentation, and optimization insights.

---

## 🗄️ Database Structure

The database represents a processed export from **Salesforce Marketing Cloud**, optimized for relational analysis.

* **Database Name:** `Portafolio`
* **Table Name:** `campaigns_analysed`
* **Records:** 20 campaigns
* **Period:** May – December 2025
* **Total Emails Sent:** 947,000
* **Total Revenue:** £1,142,300



---

## 🛠️ Table Schema

The following schema was designed using flexible `FLOAT` and `DECIMAL` types to ensure mathematical accuracy and prevent data import errors.

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

## 🔍 Analytical Coverage

The `campaign_analysis_queries.sql` file provides insights into:

1. **Executive KPIs**: Total revenue, volume, and count.
2. **Segment ROI**: Identifying which customer groups (e.g., VIP) drive the most value.
3. **Messaging Strategy**: Comparing subject line types like "Urgency" vs. "Discount".
4. **Seasonality**: Monthly trends showing the Q4 revenue surge.
5. **Engagement Funnel**: Analyzing drop-off rates from Send to Conversion.

---

### ✅ Verification Note

The data stored in this database has been cross-verified against the **`email_campaigns_analysis.xlsx`** "Source of Truth" file. Total revenue results from Query 1 match the Excel Grand Total of **£1,142,300**.

```

