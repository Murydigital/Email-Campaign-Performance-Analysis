# Excel Analysis

This folder contains the complete Excel analysis file with pivot tables and calculated metrics.

## 📁 File

**`email_campaigns_analysis.xlsx`** - Comprehensive analysis workbook

## 📊 Workbook Structure

### Sheet 1: Campaign_Analysis
- **Purpose:** Main data table with calculated KPI columns
- **Rows:** 20 campaigns (CAMP_001 to CAMP_020)
- **Columns:** 20 fields including Campaign_ID, metrics, and calculated KPIs

### Sheet 2: Segment_Analysis (Pivot Table)
- **Rows:** Segment (5 customer segments)
- **Values:** Campaign Count, Total Emails Sent, Avg Open Rate, Avg CTR, Avg Conversion Rate, Total Revenue, Avg Revenue Per Email
- **Sorted By:** Total Revenue (descending)

### Sheet 3: Subject_Line_Analysis (Pivot Table)
- **Rows:** Subject_Line_Type (7 types)
- **Values:** Campaign Count, Avg Open Rate, Avg CTR, Avg Conversion Rate, Total Revenue, Avg Revenue Per Email
- **Sorted By:** Avg Open Rate (descending)

### Sheet 4: Monthly_Trends (Pivot Table)
- **Rows:** Month (9 months: Aug-Dec 2025, Feb 2026)
- **Values:** Campaigns Sent, Total Emails, Total Revenue, Avg Open Rate, Avg CTR
- **Sorted By:** Chronological order

## 🔧 How to Use

### Opening the File
1. Download `email_campaigns_analysis.xlsx`
2. Open in Microsoft Excel, Google Sheets, or LibreOffice Calc
3. Enable editing if prompted

### Refreshing Pivot Tables
1. Click on any pivot table
2. Right-click → **Refresh** (Excel) or **Data** → **Refresh** (Google Sheets)
3. Pivot tables will update if source data changes

### Filtering Data
- Use pivot table filters to focus on specific segments, months, or campaign types
- Slicers available for interactive filtering (Excel only)

## 📈 Calculated Columns

The Campaign_Analysis sheet includes these calculated KPIs:

| Column | Formula | Purpose |
|--------|---------|---------|
| Open_Rate | `=(Opens / Emails_Sent) * 100` | Percentage of emails opened |
| CTR | `=(Clicks / Opens) * 100` | Click-through rate from opens |
| Click_to_Open | `=(Clicks / Emails_Sent) * 100` | Direct click rate from sends |
| Conversion_Rate | `=(Conversions / Clicks) * 100` | Percentage converting after click |
| Revenue_Per_Email | `=Revenue / Emails_Sent` | Revenue efficiency metric |
| Revenue_Per_Conversion | `=Revenue / Conversions` | Average order value |
| Month | `=TEXT(Send_Date,"MMM-YYYY")` | Month grouping for trends |

## 🎯 Key Visualizations

Each pivot table provides insights:
- **Segment Analysis:** Which customer groups perform best
- **Subject Line Analysis:** Which messaging approaches drive engagement
- **Monthly Trends:** Seasonal patterns and performance over time

## 📋 Data Source

Source data: `/data/campaigns_analysed.csv`

## 🔄 Updating the Analysis

To add new campaigns:
1. Add rows to Campaign_Analysis sheet
2. Copy formulas down for calculated columns
3. Refresh all pivot tables
4. Verify Grand Totals update correctly

## 💡 Tips

- Use **Cmd+Click** (Mac) or **Ctrl+Click** (Windows) to select multiple filters
- Double-click pivot table values to see underlying detail
- Export individual sheets as PDF for reporting

---

**For business insights and recommendations, see [`/EXECUTIVE_SUMMARY.md`](/EXECUTIVE_SUMMARY.md)**
