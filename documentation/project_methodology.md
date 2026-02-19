
# 📖 Documentation Centre

This folder contains supporting documentation for the **Email Campaign Performance Analysis** project. These documents ensure the analysis is reproducible, accurate, and aligned with both technical and business logic.

---

## 🔍 Finding Specific Information

### Need to understand data fields?

→ **[`data_dictionary.md`](./data_dictionary.md)**

* All **20 field definitions** (Columns A–T)
* Calculated metrics formulas (Open Rate, CTR, RPE, etc.)
* Data types (MySQL `FLOAT`/`DECIMAL`) and validation rules

### Want to know the analysis approach?

→ **[`project_methodology.md`](./project_methodology.md)**

* Step-by-step methodology (Salesforce → Excel → MySQL)
* Tools and techniques used for data sanitisation
* Analysis framework for the 10 core queries

### Looking for business insights?

→ **[`/EXECUTIVE_SUMMARY.md`](../EXECUTIVE_SUMMARY.md)**

* Strategic insights from the **£1,142,300** revenue total
* Business recommendations for the VIP segment
* Financial projections based on Q4 seasonality
* Implementation roadmap for future campaigns

### Need technical implementation details?

→ **Folder-specific READMEs:**

* **[`/excel/README.md`](../excel/README.md)** - Excel analysis guide and "Source of Truth" verification
* **[`/sql/README.md`](../sql/README.md)** - SQL query documentation and MySQL schema details
* **[`/python/README.md`](../python/README.md)** - Python notebook guide for future statistical analysis
* **[`/visualisations/README.md`](../visualisations/README.md)** - Tableau/Power BI dashboard guide

---

## 📋 Documentation Standards

All documentation in this project follows these core principles:

### Clarity

* Plain language used; no unnecessary jargon
* Clear explanations provided with real-world examples
* Logical structure and flow for easy navigation

### Consistency

* Standardised formatting using GitHub-flavoured Markdown
* Consistent naming conventions for all files and variables
* Unified terminology across all project documentation

### Completeness

* Comprehensive coverage of all aspects (May–Dec 2025)
* Balanced business and technical perspectives
* Real-world use cases and examples included

### Accuracy

* Data-driven and verifiable against the primary dataset
* Regular updates as the project evolves through SQL and Python phases
* Version control maintained via Git

---

## 🔄 Updating Documentation

When making changes to this documentation, please follow the standardised workflow:

### Process

1. **Edit** the relevant documentation file (`.md`)
2. **Update** the modification date at the bottom of the file
3. **Check** any cross-references in other files to ensure links remain active
4. **Commit** with a descriptive message (e.g., "Update data dictionary - add new calculated field")
5. **Review** the main repository README to ensure all navigation links still work

### Commit Message Format

`[Doc Update] <File Name>: <Description of change>`

---

[← Back to Main Repository](../README.md)
