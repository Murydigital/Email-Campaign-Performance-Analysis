📧 Email Campaign Performance Analysis
Salesforce Marketing Cloud | SQL | Excel | Data Analytics Portfolio

📊 Executive Summary
This project analyzes 20 email marketing campaigns sent between May and December 2025. By cleaning raw exports and engineering a MySQL database pipeline, I identified key performance drivers that generated over £1.14M in revenue.

🚀 Key Performance Indicators (KPIs)
Total Revenue: £1,142,300

Total Emails Sent: 947,000

Average Open Rate: 31.0%

Average Click-Through Rate (CTR): 24.0%

Top Campaign: Black Friday (£144,400)

📁 Repository Structure
📂 Data: Contains the cleaned campaigns_analysed.csv used for database ingestion.

📂 SQL: Includes the master analysis script and SQL Documentation.

📂 Excel: Contains the original Excel Analysis featuring Pivot Tables and data cleaning logs.

📂 Documentation: Detailed Project Methodology and Data Dictionary.

🗄️ Database Engineering
To move beyond spreadsheet limitations, I engineered a MySQL database named Portafolio. I utilized specific data types (FLOAT, DECIMAL(15,2)) to ensure financial precision and prevent common "Out of Range" import errors.

Table Schema
SQL
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
🔍 SQL Analysis & Insights
The campaign_analysis_queries.sql file contains 10 strategic queries designed to solve real-world business problems:

High-Level Dashboard: Summarizes total revenue and volume for board reporting.

Segment ROI Analysis: Compares the efficiency of VIP vs. Broad Subscriber segments.

Messaging Performance: Evaluates Subject Line types (e.g., "Urgency" vs. "Exclusive Offer").

Monthly Trends: Tracks chronological growth (Peak: December £383,000).

Engagement Funnel: Analyzes conversion drop-offs from Send to Click to Conversion.

✅ Final Results & Business Value
Segment	Total Revenue	Revenue Per Email	Engagement Tier
All Subscribers	£689,200	£1.22	High Volume
Engaged Customers	£354,800	£1.16	High Loyalty
VIP Customers	£84,400	£2.56	High Efficiency
Conclusion: The VIP Segment delivers 2.1x more revenue per email than general subscribers. Future strategy should prioritize personalized urgency-based subject lines for this group to maximize ROI.

🛠️ Technical Skills Demonstrated
Data Cleaning: Handled malformed CSV data, removed currency symbols, and fixed date formatting.

Database Management: Schema design, DROP/CREATE workflows, and INSERT INTO optimization in MySQL.

Excel Mastery: Pivot Tables, advanced charting, and conditional formatting.

Documentation: Professional technical writing using Markdown for GitHub.

📬 Contact
GitHub: Murydigital

LinkedIn: [Your Profile Link]
