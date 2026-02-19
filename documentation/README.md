
# 📖 Documentation Centre

This folder contains the comprehensive framework and technical specifications for the **Email Campaign Performance Analysis** project. These documents ensure the analysis is reproducible, accurate, and aligned with business logic.

---

## 📚 Available Documentation

### 📖 Data Dictionary
* **File:** [`data_dictionary.md`](./data_dictionary.md)
* **Contents:**
    * Complete field definitions for all **20 data dimensions and metrics**.
    * Technical data types and formats (aligned with MySQL and Excel).
    * Standardised formulas for **KPIs** (e.g. Open Rate, CTR, Revenue Per Email).
    * Business validation logic used to ensure data integrity.
* **Use this when:** You need to understand the technical structure of the dataset or validate how a specific metric was derived.

### 🔬 Project Methodology
* **File:** [`project_methodology.md`](./project_methodology.md)
* **Contents:**
    * **The Pipeline:** End-to-end workflow from Salesforce Marketing Cloud extraction to final insight.
    * **Data Cleaning:** Documentation of the "Clean Slate" process (removing currency symbols and fixing data types).
    * **Technical Stack:** Implementation details for **Excel, MySQL 8.0,** and future **Python/Tableau** integration.
    * **Strategic Insights:** Summary of the revenue-driving findings discovered during analysis.
* **Use this when:** You want to understand the analytical approach or replicate the project structure.

---

## 🎯 Quick Reference Guide

| Common Question | Source of Information |
| :--- | :--- |
| How is **CTR** calculated? | See [Data Dictionary](./data_dictionary.md) 
| What is the **Revenue Per Email**? | See [Data Dictionary](./data_dictionary.md) 
| How was the data cleaned for SQL? | See [Project Methodology](./project_methodology.md) 
| What are the core business findings? | See the [Executive Summary](../README.md) |
| Where is the raw campaign data? | See the [Data Folder](../data/) |

---
[← Back to Main Repository](../README.md)

```
