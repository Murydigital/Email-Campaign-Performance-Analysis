# Tableau Dashboard Visualisation

This folder contains the Tableau dashboard visualisation for comprehensive email campaign performance analysis.

## 📊 Dashboard Overview

An interactive Tableau dashboard providing visual insights into campaign performance across 20 campaigns, 947,000 emails, and £1.14M in revenue (February-December 2025).

### Key Features
- Real-time KPI tracking against industry benchmarks
- Segment performance comparison
- Subject line effectiveness analysis
- Monthly revenue trends and seasonality patterns
- Drill-down capabilities for detailed insights

---

## 📁 Files in This Folder

### `tableau_dashboard.png`
**Full dashboard screenshot** showing all visualizations, KPIs, and insights in one view.

**Dimensions:** High-resolution PNG (optimized for portfolio viewing)  
**Purpose:** Quick visual reference and portfolio showcase  
**Last Updated:** February 2026

---

## 🎯 Dashboard Components

### 1. KPI Summary Cards (Top Row)
Displays key performance metrics with variance vs industry benchmarks:

| Metric | Value | Industry Avg | Variance |
|--------|-------|--------------|----------|
| **Open Rate** | 31% | 22% | +41% ↑ |
| **Click-Through Rate** | 24% | 20% | +20% ↑ |
| **Conversion Rate** | 9% | 7% | +29% ↑ |
| **Revenue Per Email** | £1.21 | £0.85 | +42% ↑ |
| **Total Revenue** | £1,142,300 | - | - |

**Color Coding:**
- 🟢 Green: Above benchmark (positive variance)
- 🔵 Blue: At benchmark
- 🔴 Red: Below benchmark (requires attention)

---

### 2. Performance Benchmark Comparison
**Chart Type:** Horizontal bar chart with variance indicators

**Shows:**
- Side-by-side comparison of our performance vs industry average
- Percentage variance for each metric
- Visual highlight of outperformance areas

**Key Insight:** All metrics exceed industry benchmarks by 20-42%

---

### 3. Revenue by Customer Segment
**Chart Type:** Horizontal bar chart with data labels

**Segments Analyzed:**
1. **All Subscribers:** £689,200 (60% of revenue) - 9 campaigns
2. **VIP Customers:** £155,000 (14%) - 2 campaigns ⭐ Highest per-email
3. **Engaged Customers:** £153,800 (13%) - 4 campaigns
4. **New Subscribers:** £134,500 (12%) - 4 campaigns
5. **Inactive:** £9,800 (1%) - 1 campaign

**Key Insight:** VIP segment shows £2.59 revenue per email (2.4x average) but receives lowest campaign frequency

---

### 4. Subject Line Performance Analysis
**Chart Type:** Scatter plot with bubble sizing

**Dimensions:**
- **X-Axis:** Open Rate (%)
- **Y-Axis:** Total Revenue (£)
- **Bubble Size:** Number of campaigns using subject line type
- **Color:** Subject line category

**Subject Line Types:**
- **Exclusive Offer:** 36% open rate, £46,600 revenue (1 campaign)
- **Discount Offer:** 32% open rate, £529,200 revenue (6 campaigns) 🏆 Best performer
- **Urgency:** 31% open rate, £303,000 revenue (4 campaigns)
- **Product Highlight:** 30% open rate, £162,700 revenue (4 campaigns)
- **Educational:** 30% open rate, £90,000 revenue (3 campaigns)
- **Win-back:** 20% open rate, £9,800 revenue (1 campaign) ⚠️ Needs optimization

**Key Insight:** "Discount Offer" delivers 46% of total revenue; "Win-back" underperforms

---

### 5. Monthly Revenue Trend
**Chart Type:** Line chart with area shading

**Timeline:** February 2025 - December 2025 (9 months)

**Monthly Breakdown:**
- **February:** £67,000 (1 campaign)
- **March:** £81,700 (2 campaigns)
- **April:** £55,400 (1 campaign)
- **May:** £67,000 (1 campaign)
- **June:** £53,600 (1 campaign)
- **July:** £85,000 (2 campaigns)
- **August:** £63,600 (1 campaign)
- **September:** £46,600 (1 campaign)
- **October:** £166,600 (3 campaigns) - Q4 begins
- **November:** £267,000 (2 campaigns) 🏆 Peak month
- **December:** £188,400 (3 campaigns)

**Key Insight:** Q4 (Oct-Dec) generates 54% of annual revenue from only 40% of campaigns

**Trend Pattern:**
- Steady performance Q1-Q3
- Significant spike in Q4 (holiday season)
- November peak driven by Black Friday/Cyber Monday

---

### 6. Segment Performance Metrics Table
**Chart Type:** Data table with conditional formatting

**Columns:**
- Segment Name
- Campaign Count
- Total Emails Sent
- Open Rate (%)
- Click-Through Rate (%)
- Conversion Rate (%)
- Total Revenue (£)
- Revenue Per Email (£)

**Sorting:** Ranked by Revenue Per Email (descending)

**Top Performers:**
1. VIP Customers: £2.59/email
2. All Subscribers: £1.35/email
3. Engaged Customers: £1.28/email

**Key Insight:** Revenue per email varies 2.6x between best and worst segments

---

## 🔧 How to View the Dashboard

### Option 1: View Static Screenshot (Easiest)
1. Open `tableau_dashboard.png` in this folder
2. View full dashboard layout with all components
3. See snapshot of key metrics and insights

**Best for:** Quick reference, portfolio showcasing, presentations

---

### Option 2: Interactive Dashboard (If Published)
**Live Dashboard Link:** [Add your Tableau Public link here when published]

**Interactive Features:**
- **Filter by Date Range** - Focus on specific months/quarters
- **Filter by Segment** - Isolate specific customer groups
- **Filter by Subject Line Type** - Compare messaging effectiveness
- **Filter by Campaign ID** - Deep-dive into individual campaigns
- **Hover Tooltips** - See detailed metrics on hover
- **Drill-Down** - Click to explore underlying data
- **Export Options** - Download data or images

**Best for:** Exploratory analysis, presentations, stakeholder meetings

---

## 📊 Using Dashboard Filters

### Available Filters

#### 1. Date Range Filter
- **Type:** Slider/Date picker
- **Range:** Feb 2025 - Dec 2025
- **Use Cases:**
  - Compare Q4 vs rest of year
  - Month-over-month analysis
  - Campaign timing impact

#### 2. Segment Filter
- **Type:** Multi-select dropdown
- **Options:** All Subscribers, VIP Customers, Engaged Customers, New Subscribers, Inactive
- **Use Cases:**
  - Segment-specific performance
  - Compare VIP vs regular subscribers
  - Identify underperforming segments

#### 3. Subject Line Type Filter
- **Type:** Multi-select dropdown
- **Options:** Discount Offer, Urgency, Exclusive Offer, Product Highlight, Educational, Win-back, Event Announcement
- **Use Cases:**
  - Test subject line effectiveness
  - Compare promotional vs educational content
  - Optimize messaging strategy

#### 4. Campaign ID Filter
- **Type:** Search/dropdown
- **Options:** CAMP_001 through CAMP_020
- **Use Cases:**
  - Individual campaign deep-dive
  - Compare similar campaigns
  - Identify top performers

### Filter Interaction Tips
- **Reset Filters:** Click "Reset" button or select "All"
- **Multiple Selections:** Hold Ctrl (Windows) or Cmd (Mac) and click
- **Range Selection:** Click first item, hold Shift, click last item
- **Search:** Type in filter box to find specific values

---

## 💡 Key Insights from Dashboard

### Visual Highlights

#### 1. Performance Excellence
- **All KPIs exceed benchmarks** by 20-42%
- Green variance indicators across all metrics
- No red flags or concerning trends

#### 2. Q4 Revenue Dominance
- Clear spike in line chart October-December
- November shows highest peak (£267K)
- Q4 represents 54% of total revenue

#### 3. VIP Opportunity Gap
- VIP segment shows highest bar in Revenue Per Email
- But only 2 campaigns sent (lowest frequency)
- Clear untapped potential

#### 4. Subject Line Winners
- Discount Offer bubble (largest in scatter plot)
- Positioned in high revenue + high open rate quadrant
- Win-back bubble in low-performance area

#### 5. Segment Performance Spread
- Table shows 2.6x variance in revenue per email
- Clear tiering: VIP > All Subscribers > Engaged > New > Inactive
- Actionable segmentation strategy evident

---

## 🎨 Dashboard Design Principles

### Color Palette
- **Primary Blue:** Main brand color for charts
- **Success Green:** Above benchmark performance
- **Warning Orange:** Attention areas
- **Alert Red:** Below target metrics
- **Neutral Gray:** Secondary information

### Layout Philosophy
- **F-Pattern Reading:** KPIs at top, details below
- **Left-to-Right Flow:** Summary → Detail → Trends
- **White Space:** Breathing room between components
- **Consistent Spacing:** Clean margins between charts

---

## 📥 Data Source & Refresh

### Data Connection
**Source File:** `/data/campaigns_analysed.csv`

**Connection Type:** Text file (CSV)

**Fields Used (20 total):**
- Campaign_ID, Campaign_Name, Segment, Emails_Sent
- Opens, Clicks, Conversions, Revenue
- Send_Date, Subject_Line_Type, Funnel_Stage
- Plus 9 calculated fields

### Refresh Instructions

#### To Update Dashboard with New Data:
1. Add new campaign rows to `/data/campaigns_analysed.csv`
2. Open Tableau workbook
3. Click **Data** → **Refresh All Extracts**
4. Verify data updated correctly
5. Export new screenshot: **Dashboard** → **Export Image** → PNG format
6. Save as `tableau_dashboard.png` in this folder
7. Commit changes to GitHub

**Refresh Frequency:** As needed (recommended: after each campaign batch)

---

## 📋 Technical Details

### Tableau Specifications
**Version:** Tableau Public 2024.1 or later  
**Dashboard Size:** 1600 x 1200 pixels (desktop optimized)  
**Mobile Responsive:** Yes (automatic layouts)

### Calculated Fields Used

#### 1. Open Rate
SUM([Opens]) / SUM([Emails_Sent]) * 100

#### 2. Click-Through Rate (CTR)
SUM([Clicks]) / SUM([Opens]) * 100

#### 3. Conversion Rate
SUM([Conversions]) / SUM([Clicks]) * 100

#### 4. Revenue Per Email
SUM([Revenue]) / SUM([Emails_Sent])

#### 5. Variance vs Benchmark
([Our Performance] - [Industry Benchmark]) / [Industry Benchmark] * 100


---

## 🔍 Dashboard Use Cases

### For Marketing Managers
- Track KPIs against industry benchmarks monthly
- Identify top-performing segments and subject lines
- Plan Q4 strategy based on seasonal trends
- Allocate budget to high-ROI segments

### For Email Marketers
- Optimize subject lines by comparing performance
- Test send timing across different months
- Improve win-back campaigns (currently underperforming)
- Refine segment targeting for better engagement

### For Data Analysts
- Validate SQL findings with visual confirmation
- Identify correlations between metrics
- Spot outliers and anomalies
- Build predictive models using trend data

### For Executives/Stakeholders
- Quick KPI overview in 10 seconds
- Benchmark comparison to understand competitive position
- Revenue trends for forecasting
- Strategic recommendations supported by visuals

---

## 🔗 Related Resources

### Analysis Files
- **Excel Analysis:** [Excel README](/excel/README.md)
- **SQL Queries:** [SQL README](/sql/README.md)
- **Python Notebook:** [Python README](/python/README.md)

### Documentation
- **Executive Summary:** [EXECUTIVE_SUMMARY.md](/EXECUTIVE_SUMMARY.md)
- **Data Dictionary:** [Data Dictionary](/documentation/data_dictionary.md)
- **Methodology:** [Project Methodology](/documentation/project_methodology.md)

### Project Info
- **Main README:** [README.md](/README.md)
- **License:** [LICENSE](/LICENSE)

---

## 💡 Best Practices

### When Presenting Dashboard
1. **Start with KPIs** - Show benchmark outperformance first
2. **Tell a story** - Walk through Q4 revenue spike → VIP opportunity
3. **Use filters live** - Demonstrate interactivity
4. **Highlight insights** - Point out key visual patterns
5. **End with actions** - Connect visuals to recommendations

### When Using for Analysis
1. **Apply filters systematically** - One variable at a time
2. **Cross-reference charts** - Verify insights across multiple views
3. **Export data** - Download underlying data for deeper analysis
4. **Document findings** - Screenshot insights with annotations
5. **Share broadly** - Use dashboard link for collaboration

---

## 📞 Support & Questions

### Common Questions

**Q: Can I download the raw data from the dashboard?**  
A: Yes, if using Tableau workbook - right-click any chart → View Data → Export

**Q: Why doesn't my filter show all options?**  
A: Check if another filter is active - reset all filters and try again

**Q: How do I add this to my portfolio website?**  
A: Publish to Tableau Public, then use the embed code provided

**Q: Is the dashboard mobile-friendly?**  
A: Yes, Tableau automatically generates mobile layouts

---

## 🔄 Version History

| Version | Date | Changes |
|---------|------|---------|
| v1.0 | Feb 2026 | Initial dashboard creation with 20 campaigns |

---

**Last Updated:** February 2026  
**Created by:** Murydigital  
**Questions?** Open an issue on GitHub or contact via LinkedIn

---

*This dashboard showcases data visualization, business intelligence, and storytelling skills applicable to Marketing Analytics, BI Analyst, and Data Visualization roles.*


