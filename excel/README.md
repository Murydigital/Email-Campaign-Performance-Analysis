
# 📉 Excel Analysis — Email Performance

This folder contains the complete Excel analysis file, serving as the "Source of Truth" for the project. It includes the raw data, calculated KPI columns, and four distinct pivot table analyses.

## 📁 File

* **`email_campaigns_analysis.xlsx`** — Comprehensive analysis workbook containing raw data and pivot tables.

---

## 📊 Workbook Structure

### Sheet 1: Campaign_Analysis

* **Purpose:** Main data table with calculated KPI columns used for all subsequent analysis.
* **Rows:** 20 campaigns (CAMP_001 to CAMP_020).
* **Key Metrics:** 20 fields including Sent, Opens, Clicks, Conversions, and Revenue.

### Sheet 2: Segment_Analysis (Pivot Table)

* **Purpose:** Compares performance across 5 customer segments.
* **Key Findings:** Identifies **VIP Customers** as the efficiency leader (**£2.59 Revenue Per Email**) and **All Subscribers** as the volume driver (**£689,200 Total Revenue**).
* **Sorted By:** Total Revenue (Descending).

### Sheet 3: Subject_Line_Analysis (Pivot Table)

* **Purpose:** Evaluates the impact of 7 different messaging strategies.
* **Key Findings:** Shows **Discount Offer** as the top revenue generator (**£529,200**) and **Urgency** as the CTR leader (**26%**).
* **Sorted By:** Avg Open Rate (Descending).

### Sheet 4: Monthly_Trends (Pivot Table)

* **Purpose:** Tracks performance chronologically from May to December 2025.
* **Key Findings:** Highlights the massive Q4 surge, peaking in **December** with **£355,000** in revenue.
* **Sorted By:** Chronological order (Send Date).

---

## 🔧 How to Use

### Opening the File

1. Download `email_campaigns_analysis.xlsx`.
2. Open in Microsoft Excel (recommended), Google Sheets, or LibreOffice Calc.
3. Enable editing if prompted.

### Refreshing Pivot Tables

If you modify the raw data in the *Campaign_Analysis* sheet:

* **Excel:** Click on any pivot table, right-click, and select **Refresh**.
* **Google Sheets:** Pivot tables update automatically, or go to **Data → Refresh**.

### Filtering Data

* Use the built-in filters to drill down into specific segments or months.
* **Slicers** are available in the Excel version for interactive, one-click filtering by Segment and Subject Line Type.

---

## 🧮 Calculated Columns

The *Campaign_Analysis* sheet utilizes the following formulas to derive performance insights:

| Column | Formula | Purpose |
| --- | --- | --- |
| **Open_Rate** | `(Opens / Emails_Sent)` | Percentage of emails opened |
| **CTR** | `(Clicks / Emails_Sent)` | Click-through rate relative to total sends |
| **Click_to_Open** | `(Clicks / Opens)` | Measures the effectiveness of internal email content |
| **Conversion_Rate** | `(Conversions / Clicks)` | Percentage of users converting after a click |
| **Revenue_Per_Email** | `Revenue / Emails_Sent` | ROI efficiency metric (**Avg: £1.21**) |
| **Month** | `TEXT(Send_Date,"MMM-YYYY")` | Groups dates for chronological trend analysis |

---

## 🎯 Key Visualisations

Each pivot table in the workbook addresses a specific business question:

* **Segment Analysis:** Which customer groups should we prioritize for high-value offers?
* **Subject Line Analysis:** Which messaging styles (Urgency vs. Educational) drive the most traffic?
* **Monthly Trends:** How does our volume and revenue scale during the holiday peak?

---

## 📋 Data Source

* **Source data:** `data/campaigns_analysed.csv`
* **Project Period:** May – December 2025
* **Total Records:** 20 Campaigns

---

## 🔄 Updating the Analysis

To add new campaign data:

1. Paste new rows into the **Campaign_Analysis** sheet.
2. Drag the formulas in the calculated KPI columns down to cover the new rows.
3. Go to the **Data** tab and select **Refresh All** to update all pivot tables simultaneously.
4. Verify that the Grand Total revenue matches your new expected total (**£1,142,300** for the original 20 rows).

---

*For detailed strategic recommendations based on this Excel data, please refer to the [EXECUTIVE_SUMMARY.md](https://www.google.com/search?q=../EXECUTIVE_SUMMARY.md).*
