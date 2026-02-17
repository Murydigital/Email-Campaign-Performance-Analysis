# Email-Campaign-Performance-Analysis
Analysing email marketing campaign data using SQL, Python, Excel, and Tableau to identify optimisation opportunities

## 📊 Project Overview

Portfolio project demonstrating marketing analytics using simulated Salesforce Marketing Cloud email campaign data. This analysis showcases Excel, SQL, Python, and Tableau skills applied to email marketing optimisation.

**View Live Dashboard**: [Tableau Public Link](your-tableau-link-here)

---

## 🎯 Business Context

**Scenario**: A retail company needs to analyse 6 months (20 campaigns) of email performance to:
- Identify trends in engagement metrics (open rates, click-through rates, conversions)
- Compare performance across customer segments
- Evaluate subject line effectiveness
- Calculate ROI and revenue per email
- Provide data-driven recommendations for campaign optimisation

---

## 🛠️ Technologies & Skills Demonstrated

![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![SQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)

- **Excel**: Data preparation, calculated fields, pivot tables, exploratory analysis
- **SQL (MySQL)**: Data extraction, aggregation, KPI calculations, performance queries
- **Python (Pandas, NumPy)**: Data manipulation, statistical analysis, metric calculations
- **Tableau Public**: Interactive dashboard creation, data visualisation, executive reporting
- **Salesforce Marketing Cloud**: Domain knowledge of SFMC data structures and KPIs

---

## 📈 Key Findings

1. 🎯 **VIP Customers** delivered the highest engagement across all metrics:
   - Open Rate: 36.0%
   - CTR: 30.0%
   - Revenue per email: £2.59
   
2. 📧 **All Subscribers** segment generated the most total revenue (£689,200) due to volume

3. 💰 **Discount Offers** drove highest open rates (35.8%) and total revenue (£529,200)

4. 📅 **Engaged Customers** represent the largest campaign volume (8 campaigns) with consistent 33% open rates

5. ⚠️ **Inactive segment** shows re-engagement opportunity with only 20% open rate and £9,800 revenue


---

## 📊 Dashboard Preview

![Email Campaign Dashboard](visualisations/tableau_dashboard.png)

**[🔗 View Interactive Dashboard on Tableau Public](your-tableau-link-here)**

The dashboard includes:
- KPI summary cards (Total Revenue, Average Metrics, Campaign Count)
- Revenue trend analysis over 6 months
- Segment performance comparison
- Subject line effectiveness analysis
- Detailed campaign performance table

---

## 📁 Project Structure

```
email-campaign-performance-analysis/
├── README.md # Project overview and quick findings
├── EXECUTIVE_SUMMARY.md # Detailed analysis and strategic recommendations
├── LICENSE # MIT License
├── data/
│ ├── email_campaigns_data.csv # Raw campaign data
│ └── campaigns_analysed.csv # Processed data with calculated metrics
├── excel/
│ ├── email_campaigns_analysis.xlsx # Excel analysis with pivot tables
│ └── README.md # Guide to using Excel file
├── sql/
│ ├── campaign_analysis_queries.sql # SQL queries for metrics and insights
│ └── README.md # SQL setup and query descriptions
├── python/
│ ├── campaign_analysis.ipynb # Jupyter notebook with analysis
│ ├── campaign_analysis.html # HTML export of notebook
│ └── README.md # How to run Python analysis
├── visualisations/
│ ├── tableau_dashboard.png # Dashboard screenshot
│ └── README.md # Dashboard guide and features
└── documentation/
├── data_dictionary.md # Field definitions and metrics
├── project_methodology.md # Analysis approach and findings
└── README.md # Documentation index
```

## 📊 Key Findings Summary

Our email campaign analysis across 20 campaigns (947,000 emails, £1.14M revenue) reveals:

### Performance Highlights
- **31% average open rate** (41% above industry benchmark of 22%)
- **24% average CTR** (20% above industry benchmark of 20%)
- **9% conversion rate** (29% above industry benchmark of 7%)
- **£1.21 revenue per email sent** (42% above industry average)

### Top 3 Insights
1. **Q4 Revenue Dominance:** Oct-Dec generates 54% of annual revenue from 40% of campaigns
2. **VIP Segment Performance:** VIP customers deliver £2.59 per email (2.4x average) but only received 2 campaigns
3. **Subject Line Impact:** "Discount Offer" subject lines generated £529,200 (46% of total revenue)

### Strategic Recommendations
- Increase Q4 campaign budget by 30%
- Launch monthly VIP exclusive campaigns (+£156K projected annual revenue)
- Optimize win-back campaigns (currently 20% open rate vs 30% target)

**[📄 View Full Executive Summary →](EXECUTIVE_SUMMARY.md)** for detailed analysis, ROI projections, and implementation roadmap.


---

## 🔍 Analysis Highlights

### Segment Performance
| Segment | Avg Open Rate | Avg CTR | Revenue/Email | Total Revenue |
|---------|--------------|---------|---------------|---------------|
| VIP Customers | 36.0% | 30.0% | £2.59 | £84,400 |
| All Subscribers | 31.0% | 24.0% | £1.46 | £689,200 |
| Engaged Customers | 33.0% | 23.0% | £0.87 | £334,800 |
| New Subscribers | 30.0% | 20.0% | £0.43 | £24,100 |
| Inactive | 20.0% | 20.0% | £0.28 | £9,800 |


### Subject Line Effectiveness
| Type | Avg Open Rate | Avg CTR | Total Revenue |
|------|--------------|---------|---------------|
| Discount Offer | 35.8% | 25.0% | £529,200 |
| Urgency | 31.4% | 25.0% | £402,800 |
| Educational | 35.0% | 20.0% | £136,400 |
| Product Announcement | 25.0% | 20.0% | £112,800 |

### Monthly Performance
- **Peak Month**: December (£405,600 revenue)
- **Highest Volume**: November (215,000 sends)
- **Best Engagement**: August (31.4% open rate)

---

## 🚀 How to Use This Project

### View the Analysis
1. **Excel**: Download `excel/email_campaigns_analysis.xlsx` and explore pivot tables
2. **SQL**: Review queries in `sql/campaign_analysis_queries.sql`
3. **Python**: Open `python/campaign_analysis.html` in browser or run `.ipynb` in Jupyter
4. **Tableau**: Visit the [live dashboard link](your-tableau-link-here) or view screenshot

### Replicate the Analysis
1. Clone this repository
2. Open the CSV data in your preferred tool
3. Run SQL queries in MySQL or any SQL environment
4. Execute Python notebook (requires pandas, numpy)
5. Load data into Tableau Public and explore

---

## 💡 Business Recommendations

Based on analysis findings:

1. **Prioritise VIP Segment**: Allocate 30% more budget to VIP campaigns (highest ROAS)
2. **Optimise Send Times**: Schedule campaigns for Tuesday 10:00 AM (highest engagement)
3. **Subject Line Strategy**: Use urgency + discount combination for promotional campaigns
4. **Re-engagement Programme**: Develop targeted win-back series for Inactive segment (current 20% open rate has improvement potential)
5. **Seasonal Planning**: Increase frequency during Q4 holiday season (3x higher revenue than other months)
6. **A/B Testing**: Continue testing subject line types - discount offers consistently outperform

---

## 📚 Skills Demonstrated

✅ Email marketing KPI calculation and analysis  
✅ SQL aggregate functions, joins, and date manipulation  
✅ Python data analysis with Pandas and NumPy  
✅ Excel pivot tables and advanced formulae  
✅ Tableau dashboard design and data storytelling  
✅ Salesforce Marketing Cloud data structure knowledge  
✅ Business insight generation and strategic recommendations  
✅ Technical documentation and project organisation

---

## 🔗 Connect With Me

- **GitHub Profile**: [github.com/Murydigital](https://github.com/Murydigital)
- **Salesforce Trailhead**: [My Trailblazer Profile](your-trailhead-link)
- **Tableau Public Portfolio**: [My Tableau Profile](your-tableau-link)
- **LinkedIn**: [Connect with me](your-linkedin-link)
- **Portfolio**: mury.digital

---

## 📜 My Certifications

- Salesforce Marketing Cloud Email Specialist
- Salesforce Marketing Cloud Administrator
- Salesforce Certified Administrator
- Data Analytics Professional Certificate (2026)

---

## 📧 Contact

**Mury** | CRM & MarTech Consultant  
Digital Marketing, Marketing Automation & Data Analytics

📧 Email: your.email@domain.com  
💼 LinkedIn: [Your Profile](your-linkedin-link)  
🌐 Portfolio: mury.digital

---

## 📝 About This Project

This portfolio project was created using simulated data that reflects real-world Salesforce Marketing Cloud campaign structures, metrics, and reporting requirements, informed by my professional experience as a Marketing Cloud Administrator.

The analysis demonstrates practical application of data analytics tools to solve common marketing challenges: understanding campaign performance, identifying high-value segments, optimising engagement strategies, and providing actionable business recommendations.

**Key Technologies**: Excel, SQL (MySQL), Python (Pandas, NumPy), Tableau Public  
**Domain**: Email Marketing Analytics, CRM, Marketing Automation  
**Completion Date**: February 2026

---

## 🔄 Future Enhancements

Planned additions to this project:

- [ ] Predictive modelling for send time optimisation using Python
- [ ] A/B test statistical significance testing
- [ ] Customer lifetime value analysis
- [ ] Geographic performance segmentation
- [ ] Device-level engagement analysis (mobile vs desktop)
- [ ] Journey Builder automation performance comparison

---

## 📄 License

This project is open source and available for educational purposes. Feel free to use this as inspiration for your own portfolio projects.

---

*Last updated: February 2026*
