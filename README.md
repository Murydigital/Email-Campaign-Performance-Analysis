
# 📧 Email Campaign Performance Analysis

Analysing email marketing campaign data using Excel, SQL, Python, and Tableau to identify optimisation opportunities.

[![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)](excel/)
[![SQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](sql/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](python/)
[![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)](visualisations/)

**[🔗 View Live Dashboard on Tableau Public](your-tableau-link-here)**

---

## 📊 Project Overview

Portfolio project demonstrating marketing analytics using simulated Salesforce Marketing Cloud email campaign data. The analysis showcases Excel, SQL, Python, and Tableau skills applied to email marketing optimisation across 20 campaigns (May–December 2025).

| Metric | Value |
|---|---|
| 📅 Period | May – December 2025 |
| 📨 Total Emails Sent | 947,000 |
| 💰 Total Revenue | £1,142,300 |
| 📊 Campaigns Analysed | 20 |
| 📬 Average Open Rate | 31% |
| 🖱️ Average CTR | 24% |
| 🔄 Average Conversion Rate | 9% |
| 💷 Revenue Per Email | £1.17 |

---

## 🎯 Business Context

**Scenario**: A retail company needs to analyse 8 months of email performance to:
- Identify trends in engagement metrics (open rates, click-through rates, conversions)
- Compare performance across customer segments
- Evaluate subject line effectiveness
- Calculate ROI and revenue per email
- Provide data-driven recommendations for campaign optimisation

---

## 🛠️ Technologies & Skills Demonstrated

- **Excel**: Data preparation, calculated fields, pivot tables, exploratory analysis
- **SQL (MySQL)**: Data extraction, aggregation, KPI calculations, 10 analytical queries
- **Python (Pandas, NumPy, Matplotlib, Seaborn)**: Statistical analysis, visualisations, Jupyter notebook
- **Tableau Public**: Interactive dashboard, data storytelling, executive reporting
- **Salesforce Marketing Cloud**: Domain knowledge of SFMC data structures and KPIs

---

## 🔑 Key Findings

1. 🏆 **Black Friday** was the top campaign — £144,400 revenue, 35% open rate, 11% conversion
2. 📅 **Q4 (Oct–Dec)** drove **77% of total revenue** — £881,400 from 12 campaigns
3. 👑 **VIP Customers** delivered the best efficiency — 36% open rate and £2.59 revenue per email
4. 💰 **Discount Offer** subject lines generated the most revenue — £529,200 (46% of total)
5. ⚡ **Urgency** subject lines achieved the highest CTR — 26%
6. ⚠️ **Inactive segment** shows re-engagement opportunity — only 20% open rate and £9,800 revenue
7. 📆 All 20 campaigns were sent on **Tuesday**

**[📄 View Full Executive Summary →](EXECUTIVE_SUMMARY.md)**

---

## 📊 Dashboard Preview

![Email Campaign Dashboard](visualisations/tableau_dashboard.png)

**[🔗 View Interactive Dashboard on Tableau Public](your-tableau-link-here)**

The dashboard includes:
- KPI summary cards (Total Revenue, Average Open Rate, CTR, Conversion Rate)
- Monthly revenue trend (May–December 2025)
- Segment performance comparison
- Subject line effectiveness analysis
- Top campaigns performance table

---

## 📁 Project Structure

```
email-campaign-performance-analysis/
├── README.md                          # Project overview and quick findings
├── EXECUTIVE_SUMMARY.md               # Detailed analysis and strategic recommendations
├── LICENSE                            # MIT License
├── data/
│   ├── email_campaigns_data.csv       # Raw campaign data
│   └── campaigns_analysed.csv        # Processed data with calculated metrics
├── excel/
│   ├── email_campaigns_analysis.xlsx  # Excel analysis with pivot tables
│   └── README.md                      # Guide to using Excel file
├── sql/
│   ├── campaign_analysis_queries.sql  # SQL queries for metrics and insights
│   └── README.md                      # SQL setup and query descriptions
├── python/
│   ├── campaign_analysis.ipynb        # Jupyter notebook with analysis
│   ├── campaign_analysis.html         # HTML export of notebook
│   └── README.md                      # How to run Python analysis
├── visualisations/
│   ├── tableau_dashboard.png          # Dashboard screenshot
│   └── README.md                      # Dashboard guide and features
└── documentation/
    ├── data_dictionary.md             # Field definitions and metrics
    ├── project_methodology.md         # Analysis approach and findings
    └── README.md                      # Documentation index
```

---

## 🔍 Analysis Highlights

### Segment Performance

| Segment | Campaigns | Avg Open Rate | Avg CTR | Revenue/Email | Total Revenue |
|---|---|---|---|---|---|
| VIP Customers | 2 | 36% | 30% | £2.59 | £84,400 |
| Engaged Customers | 8 | 33% | 23% | £0.98 | £334,800 |
| All Subscribers | 7 | 31% | 24% | £1.11 | £689,200 |
| New Subscribers | 2 | 30% | 20% | £0.49 | £24,100 |
| Inactive | 1 | 20% | 20% | £0.28 | £9,800 |

### Subject Line Effectiveness

| Type | Campaigns | Avg Open Rate | Avg CTR | Total Revenue |
|---|---|---|---|---|
| Exclusive Offer | 1 | 36% | 30% | £46,600 |
| Educational | 5 | 33% | 20% | £126,200 |
| Welcome | 1 | 35% | 20% | £14,700 |
| Discount Offer | 6 | 32% | 25% | £529,200 |
| Urgency | 4 | 31% | 26% | £303,000 |
| Product Announcement | 2 | 28% | 23% | £112,800 |
| Win-back | 1 | 20% | 20% | £9,800 |

### Monthly Performance

| Month | Campaigns | Emails Sent | Revenue | Avg Open | Avg CTR |
|---|---|---|---|---|---|
| May-2025 | 1 | 45,000 | £33,800 | 30% | 25% |
| Aug-2025 | 2 | 45,000 | £52,500 | 35% | 25% |
| Sep-2025 | 5 | 195,000 | £153,000 | 29% | 23% |
| Oct-2025 | 4 | 203,000 | £231,400 | 30% | 24% |
| Nov-2025 | 3 | 189,000 | £267,000 | 35% | 25% |
| Dec-2025 | 5 | 270,000 | £383,000 | 32% | 23% |
| **Total** | **20** | **947,000** | **£1,142,300** | **31%** | **24%** |

---

## 💡 Strategic Recommendations

1. **Expand VIP Programme** — VIP delivers £2.59/email vs £1.17 average. Increase from 2 to 6 campaigns/year (+£50K–£80K projected)
2. **Build H1 Campaign Calendar** — May–Aug had only 3 campaigns (8% of revenue). Add June/July campaigns to warm audience for Q4
3. **Replicate Black Friday Sequence** — The Preview → Black Friday → Cyber Monday sequence generated £405,600. Apply this model to Summer Sale and Halloween
4. **Combine Discount + Urgency** — Test subject lines merging both strategies to optimise CTR and conversion simultaneously
5. **Re-evaluate Win-back Strategy** — Re-engagement generated only £9,800. Redirect volume to higher-ROI segments or improve targeting

---

## 🚀 How to Use This Project

### View the Analysis
1. **Excel**: Download `excel/email_campaigns_analysis.xlsx` and explore the 4 pivot tables
2. **SQL**: Review queries in `sql/campaign_analysis_queries.sql`
3. **Python**: Open `python/campaign_analysis.html` in browser, or run `.ipynb` in Jupyter
4. **Tableau**: Visit the [live dashboard](your-tableau-link-here) or view the screenshot

### Replicate the Analysis
1. Clone this repository: `git clone https://github.com/Murydigital/email-campaign-performance-analysis.git`
2. Open the CSV files in your preferred tool
3. Run SQL queries in MySQL (`USE Portafolio;`)
4. Execute Python notebook (`pip install pandas numpy matplotlib seaborn`)
5. Load data into Tableau Public

---

## 📚 Skills Demonstrated

✅ Email marketing KPI calculation and analysis  
✅ SQL aggregate functions, GROUP BY, date manipulation, subqueries  
✅ Python data analysis with Pandas, NumPy, Matplotlib and Seaborn  
✅ Excel pivot tables and dynamic formulae  
✅ Tableau dashboard design and data storytelling  
✅ Salesforce Marketing Cloud data structure knowledge  
✅ Business insight generation and strategic recommendations  
✅ Technical documentation and project organisation  

---

## 🔄 Future Enhancements

- [ ] Predictive modelling for revenue forecasting (2026 campaigns)
- [ ] A/B test statistical significance testing
- [ ] Customer lifetime value analysis
- [ ] Geographic performance segmentation
- [ ] Device-level engagement analysis (mobile vs desktop)
- [ ] Journey Builder automation performance comparison

---

## 🔗 Connect

- **GitHub**: [github.com/Murydigital](https://github.com/Murydigital)
- **Tableau Public**: [My Tableau Profile](your-tableau-link)
- **LinkedIn**: [Connect with me](your-linkedin-link)
- **Portfolio**: [mury.digital](https://mury.digital)

---

## 📜 Certifications

- Salesforce Marketing Cloud Email Specialist
- Salesforce Marketing Cloud Administrator
- Salesforce Certified Administrator
- Data Analytics Professional Certificate (2026)

---

## 📝 About This Project

This portfolio project uses simulated data reflecting real-world Salesforce Marketing Cloud campaign structures, metrics, and reporting requirements — informed by professional experience as a Marketing Cloud Administrator.

**Domain**: Email Marketing Analytics · CRM · Marketing Automation  
**Completion**: February 2026  
**License**: MIT — open source, free to use as portfolio inspiration

---

*Last updated: February 2026*
