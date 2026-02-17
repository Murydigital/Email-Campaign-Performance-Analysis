# Data Dictionary: Email Campaign Performance Analysis

This document provides comprehensive definitions for all data fields used in the email campaign performance analysis.

**Dataset:** Email Campaign Data (Feb-Dec 2025)  
**Total Campaigns:** 20  
**Data Source:** Salesforce Marketing Cloud  
**Last Updated:** February 2026

---

## 📊 Dataset Overview

| Attribute | Details |
|-----------|---------|
| **Total Records** | 20 campaigns |
| **Date Range** | February 2025 - December 2025 |
| **Total Fields** | 20 (11 source fields + 9 calculated fields) |
| **File Format** | CSV (comma-separated values) |
| **File Size** | ~15KB |
| **Encoding** | UTF-8 |

---

## 📋 Field Definitions

### Source Fields (From Salesforce Marketing Cloud)

#### 1. Campaign_ID
- **Data Type:** String (Text)
- **Format:** CAMP_XXX (where XXX is a 3-digit number)
- **Description:** Unique identifier for each email campaign
- **Example Values:** CAMP_001, CAMP_015, CAMP_020
- **Null Values:** Not allowed (Primary Key)
- **Business Rule:** Must be unique across all campaigns
- **Use Case:** Joining tables, filtering specific campaigns

---

#### 2. Campaign_Name
- **Data Type:** String (Text)
- **Format:** Free text (max 100 characters)
- **Description:** Descriptive name of the email campaign
- **Example Values:** "Summer Sale Launch", "VIP Early Access Nov", "Black Friday 2025"
- **Null Values:** Not allowed
- **Business Rule:** Should clearly describe campaign purpose
- **Use Case:** Reporting, campaign identification, stakeholder communication

---

#### 3. Segment
- **Data Type:** String (Categorical)
- **Format:** Predefined categories
- **Description:** Customer segment targeted by the campaign
- **Allowed Values:**
  - `All Subscribers` - Entire email list
  - `VIP Customers` - High-value, loyal customers
  - `Engaged Customers` - Recently active subscribers
  - `New Subscribers` - Recently joined email list
  - `Inactive` - Dormant subscribers (win-back campaigns)
- **Example Values:** "VIP Customers", "All Subscribers"
- **Null Values:** Not allowed
- **Business Rule:** Must be one of the 5 predefined segments
- **Use Case:** Segmentation analysis, targeted strategy, performance comparison

---

#### 4. Emails_Sent
- **Data Type:** Integer (Whole number)
- **Format:** Positive integer
- **Description:** Total number of emails successfully sent/delivered
- **Range:** 20,000 - 80,000 (in this dataset)
- **Example Values:** 45000, 60000, 33500
- **Null Values:** Not allowed
- **Business Rule:** Must be > 0
- **Use Case:** Calculating rates, volume analysis, list size tracking

---

#### 5. Opens
- **Data Type:** Integer (Whole number)
- **Format:** Positive integer
- **Description:** Total number of unique email opens (first open counted)
- **Range:** 6,000 - 28,000 (in this dataset)
- **Example Values:** 13950, 20400, 10050
- **Null Values:** Not allowed (can be 0)
- **Business Rule:** Must be ≤ Emails_Sent
- **Tracking Method:** Pixel tracking
- **Use Case:** Calculating Open Rate, engagement analysis

---

#### 6. Clicks
- **Data Type:** Integer (Whole number)
- **Format:** Positive integer
- **Description:** Total number of unique link clicks within emails
- **Range:** 1,600 - 8,500 (in this dataset)
- **Example Values:** 4185, 6120, 3015
- **Null Values:** Not allowed (can be 0)
- **Business Rule:** Must be ≤ Opens (you can't click without opening)
- **Tracking Method:** URL tracking with UTM parameters
- **Use Case:** Calculating CTR, content effectiveness, CTA performance

---

#### 7. Conversions
- **Data Type:** Integer (Whole number)
- **Format:** Positive integer
- **Description:** Total number of completed desired actions (purchases, sign-ups, etc.)
- **Range:** 150 - 1,000 (in this dataset)
- **Example Values:** 376, 551, 271
- **Null Values:** Not allowed (can be 0)
- **Business Rule:** Must be ≤ Clicks
- **Conversion Window:** 7 days post-click
- **Use Case:** Calculating Conversion Rate, ROI analysis, funnel optimization

---

#### 8. Revenue
- **Data Type:** Decimal (Currency)
- **Format:** Pounds Sterling (£)
- **Precision:** 2 decimal places
- **Description:** Total revenue attributed to the campaign
- **Range:** £9,800 - £144,400 (in this dataset)
- **Example Values:** £67000.00, £48300.00, £134500.00
- **Null Values:** Not allowed (can be 0)
- **Business Rule:** Must be ≥ 0
- **Attribution Model:** Last-click (7-day window)
- **Use Case:** ROI calculation, revenue forecasting, campaign valuation

---

#### 9. Send_Date
- **Data Type:** Date
- **Format:** YYYY-MM-DD (ISO 8601)
- **Description:** Date when the email campaign was sent
- **Range:** 2025-02-18 to 2025-12-19
- **Example Values:** 2025-11-27, 2025-03-14, 2025-08-22
- **Null Values:** Not allowed
- **Business Rule:** Must be a valid date
- **Time Zone:** UTC (Coordinated Universal Time)
- **Use Case:** Trend analysis, seasonality patterns, day-of-week analysis

---

#### 10. Subject_Line_Type
- **Data Type:** String (Categorical)
- **Format:** Predefined categories
- **Description:** Classification of email subject line approach
- **Allowed Values:**
  - `Discount Offer` - Price reduction or percentage off
  - `Urgency` - Time-limited offers, countdown messaging
  - `Exclusive Offer` - VIP/members-only messaging
  - `Product Highlight` - Feature/product focused
  - `Educational` - Tips, how-to, informational
  - `Win-back` - Re-engagement messaging for inactive users
  - `Event Announcement` - Event invitations, webinars
- **Example Values:** "Discount Offer", "Urgency", "Win-back"
- **Null Values:** Not allowed
- **Business Rule:** Must be one of the 7 predefined types
- **Use Case:** Subject line optimization, A/B testing, messaging strategy

---

#### 11. Funnel_Stage
- **Data Type:** String (Categorical)
- **Format:** Predefined categories
- **Description:** Marketing funnel stage targeted by the campaign
- **Allowed Values:**
  - `Awareness` - Top of funnel, brand introduction
  - `Consideration` - Middle of funnel, product evaluation
  - `Conversion` - Bottom of funnel, purchase-focused
  - `Retention` - Post-purchase, loyalty building
- **Example Values:** "Conversion", "Retention", "Consideration"
- **Null Values:** Not allowed
- **Business Rule:** Must be one of the 4 funnel stages
- **Use Case:** Funnel analysis, stage-specific strategy, customer journey mapping

---

### Calculated Fields (Derived Metrics)

#### 12. Open_Rate
- **Data Type:** Decimal (Percentage)
- **Format:** XX.X% (one decimal place)
- **Formula:** `(Opens / Emails_Sent) × 100`
- **Description:** Percentage of sent emails that were opened
- **Range:** 20% - 36% (in this dataset)
- **Example Calculation:** (13,950 opens / 45,000 sent) × 100 = 31.0%
- **Industry Benchmark:** 22% (retail/ecommerce)
- **Interpretation:**
  - Below 20%: Poor subject line/sender reputation
  - 20-30%: Average performance
  - Above 30%: Strong performance
- **Use Case:** Subject line effectiveness, send time optimization, list quality

---

#### 13. CTR (Click-Through Rate)
- **Data Type:** Decimal (Percentage)
- **Format:** XX.X% (one decimal place)
- **Formula:** `(Clicks / Opens) × 100`
- **Description:** Percentage of email opens that resulted in a click
- **Range:** 20% - 30% (in this dataset)
- **Example Calculation:** (4,185 clicks / 13,950 opens) × 100 = 30.0%
- **Industry Benchmark:** 20% (retail/ecommerce)
- **Interpretation:**
  - Below 15%: Weak content/CTAs
  - 15-25%: Average performance
  - Above 25%: Strong engagement
- **Use Case:** Content effectiveness, CTA optimization, relevance measurement

---

#### 14. Click_to_Open_Rate
- **Data Type:** Decimal (Percentage)
- **Format:** XX.X% (one decimal place)
- **Formula:** `(Clicks / Emails_Sent) × 100`
- **Description:** Percentage of sent emails that received a click (bypasses opens)
- **Range:** 6% - 11% (in this dataset)
- **Example Calculation:** (4,185 clicks / 45,000 sent) × 100 = 9.3%
- **Alternative Name:** Click-to-Sent Rate
- **Use Case:** Overall campaign effectiveness, simplified reporting

---

#### 15. Conversion_Rate
- **Data Type:** Decimal (Percentage)
- **Format:** XX.X% (one decimal place)
- **Formula:** `(Conversions / Clicks) × 100`
- **Description:** Percentage of clicks that resulted in a conversion
- **Range:** 7% - 12% (in this dataset)
- **Example Calculation:** (376 conversions / 4,185 clicks) × 100 = 9.0%
- **Industry Benchmark:** 7% (retail/ecommerce)
- **Interpretation:**
  - Below 5%: Landing page issues, mismatch
  - 5-10%: Average performance
  - Above 10%: Strong alignment and UX
- **Use Case:** Landing page optimization, offer alignment, funnel health

---

#### 16. Revenue_Per_Email
- **Data Type:** Decimal (Currency)
- **Format:** £X.XX (two decimal places)
- **Formula:** `Revenue / Emails_Sent`
- **Description:** Average revenue generated per email sent
- **Range:** £0.15 - £2.59 (in this dataset)
- **Example Calculation:** £67,000 / 45,000 emails = £1.49
- **Industry Benchmark:** £0.85 (retail/ecommerce)
- **Interpretation:**
  - Below £0.50: Low-value or poor targeting
  - £0.50-£1.50: Average performance
  - Above £1.50: High-value campaigns
- **Use Case:** Campaign ROI, budget allocation, segment valuation

---

#### 17. Revenue_Per_Conversion
- **Data Type:** Decimal (Currency)
- **Format:** £XXX.XX (two decimal places)
- **Formula:** `Revenue / Conversions`
- **Description:** Average order value (AOV) per conversion
- **Range:** £65 - £180 (in this dataset)
- **Example Calculation:** £67,000 / 376 conversions = £178.19
- **Alternative Name:** Average Order Value (AOV)
- **Interpretation:**
  - Below £80: Low-ticket items
  - £80-£150: Mid-range products
  - Above £150: High-ticket items/bundles
- **Use Case:** Product mix analysis, upselling effectiveness, pricing strategy

---

#### 18. Month
- **Data Type:** String (Text)
- **Format:** MMM-YYYY (e.g., "Nov-2025")
- **Formula:** `TEXT(Send_Date, "MMM-YYYY")`
- **Description:** Month and year extracted from Send_Date for trend analysis
- **Range:** Feb-2025 to Dec-2025 (9 months)
- **Example Values:** "Nov-2025", "Mar-2025", "Aug-2025"
- **Use Case:** Monthly trending, seasonality analysis, time-series reporting

---

#### 19. Quarter
- **Data Type:** String (Text)
- **Format:** QX-YYYY (e.g., "Q4-2025")
- **Formula:** `"Q" & CEILING(MONTH(Send_Date)/3) & "-" & YEAR(Send_Date)`
- **Description:** Quarter and year extracted from Send_Date
- **Range:** Q1-2025 to Q4-2025
- **Example Values:** "Q4-2025", "Q1-2025", "Q3-2025"
- **Use Case:** Quarterly reporting, budget planning, seasonal strategy

---

#### 20. Day_of_Week
- **Data Type:** String (Text)
- **Format:** Full day name (e.g., "Tuesday")
- **Formula:** `TEXT(Send_Date, "dddd")`
- **Description:** Day of week when campaign was sent
- **Allowed Values:** Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
- **Example Values:** "Tuesday", "Friday", "Thursday"
- **Use Case:** Send time optimization, day-of-week performance analysis

---

## 🔢 Data Validation Rules

### Field Constraints

| Field | Constraint | Validation Rule |
|-------|-----------|-----------------|
| Campaign_ID | NOT NULL, UNIQUE | Must be unique, format CAMP_XXX |
| Emails_Sent | > 0 | Must be positive integer |
| Opens | ≤ Emails_Sent | Cannot exceed emails sent |
| Clicks | ≤ Opens | Cannot exceed opens |
| Conversions | ≤ Clicks | Cannot exceed clicks |
| Revenue | ≥ 0 | Cannot be negative |
| Send_Date | Valid Date | Must be between 2025-01-01 and 2025-12-31 |
| Open_Rate | 0-100% | (Opens/Emails_Sent) × 100 |
| CTR | 0-100% | (Clicks/Opens) × 100 |
| Conversion_Rate | 0-100% | (Conversions/Clicks) × 100 |

### Data Quality Checks

```sql
-- Check for null values in required fields
SELECT * FROM campaigns WHERE Campaign_ID IS NULL OR Emails_Sent IS NULL;

-- Check for invalid Opens (exceeds Emails_Sent)
SELECT * FROM campaigns WHERE Opens > Emails_Sent;

-- Check for invalid Clicks (exceeds Opens)
SELECT * FROM campaigns WHERE Clicks > Opens;

-- Check for invalid Conversions (exceeds Clicks)
SELECT * FROM campaigns WHERE Conversions > Clicks;

-- Check for negative Revenue
SELECT * FROM campaigns WHERE Revenue < 0;
