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

1. 🎯 **VIP Customers** delivered 2.4x higher revenue per email (£2.59) compared to other segments
2. 📧 **Discount Offers** drove highest open rates (35.8%) and conversion rates (14.5%)
3. 📅 **Tuesday sends** showed consistently strong performance across all metrics
4. 💰 **Black Friday/Cyber Monday campaigns** generated £405,600 (32% of total revenue)
5. ✅ **Engaged Customers** segment had lowest unsubscribe rate (0.20%)

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
├── README.md                                    # Project overview (this file)
├── data/
│   ├── email_campaigns_data.csv                # Raw campaign data
│   └── campaigns_analysed.csv                  # Processed data with calculated metrics
├── excel/
│   └── email_campaigns_analysis.xlsx           # Excel analysis with pivot tables
├── sql/
│   └── campaign_analysis_queries.sql           # SQL queries for metrics and insights
├── python/
│   ├── campaign_analysis.ipynb                 # Jupyter notebook with analysis
│   └── campaign_analysis.html                  # HTML export of notebook
├── visualisations/
│   └── tableau_dashboard.png                   # Dashboard screenshot
└── documentation/
    ├── data_dictionary.md                      # Field definitions and metrics
    └── project_methodology.md                  # Analysis approach and findings
```

---

## 🔍 Analysis Highlights

### Segment Performance
| Segment | Avg Open Rate | Avg CTR | Revenue/Email | Total Revenue |
|---------|--------------|---------|---------------|---------------|
| VIP Customers | 36.0% | 30.0% | £2.59 | £84,400 |
| Engaged Customers | 35.0% | 25.0% | £1.85 | £665,300 |
| All Subscribers | 25.0% | 25.0% | £1.08 | £505,200 |
| New Subscribers | 25.0% | 20.0% | £0.76 | £24,100 |
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

This portfolio project was created using simulated data that reflects real-world Salesforce Marketing Cloud campaign structures, metrics, and reporting requirements based on my professional experience as a Marketing Cloud Administrator.

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
