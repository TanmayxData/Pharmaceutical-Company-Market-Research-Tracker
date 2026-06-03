# Pharmaceutical Company Market Research Tracker (PCMRT)

## Project Overview

The Pharmaceutical Company Market Research Tracker (PCMRT) is an end-to-end healthcare market intelligence project designed to collect, validate, analyze, and visualize pharmaceutical company data using Python, MySQL, and Power BI/Tableau.

The project covers 50+ global pharmaceutical companies and provides insights into company revenue, workforce size, therapeutic focus areas, product portfolios, and geographic distribution using official corporate sources.

---

## Business Problem

Pharmaceutical company information is often scattered across annual reports, investor relations websites, SEC filings, and corporate fact sheets.

The objective of this project is to consolidate, validate, and analyze this information to generate business intelligence insights that support market research and competitive benchmarking.

---

## Project Objectives

* Collect pharmaceutical company data from official corporate sources
* Validate and improve data quality using Python
* Normalize therapeutic area information for analytical reporting
* Perform business analysis using SQL
* Build executive dashboards for market intelligence reporting
* Generate insights on revenue, workforce, geography, and therapeutic focus

---

## Data Sources

Official company sources only:

* Annual Reports
* SEC Filings
* Investor Relations Reports
* Earnings Reports
* Corporate Fact Sheets
* Official Product Portfolio Pages

---

## Dataset Fields

### Main Dataset

* Company Name
* Country
* Headquarters
* Revenue (USD)
* Employees
* Therapeutic Area
* Key Products
* Website
* Last Updated Date

---

## Project Workflow

### Phase 1 — Data Collection

Collected company-level information from official pharmaceutical company sources.

Data collected includes:

* Revenue
* Employee Count
* Headquarters
* Therapeutic Areas
* Product Portfolio
* Website Information

**Output**

* PCMRT_Main_Dataset.csv

---

### Phase 2 — Data Validation

Performed automated data quality checks using Python.

Validation Rules:

* Company Name cannot be null
* Country cannot be null
* Revenue must be numeric
* Employees must be numeric
* Website must start with https://
* Duplicate companies identified
* Missing values assessment

**Outputs**

* Validated_PCMRT_Main_Dataset.csv
* Report.xlsx

---

### Phase 3 — Data Cleaning & Normalization

Normalized therapeutic area information into a master table for advanced analytics.

Example:

Before:

Pfizer → Oncology, Vaccines, Internal Medicine

After:

Pfizer → Oncology

Pfizer → Vaccines

Pfizer → Internal Medicine

**Output**

* therapeutic_area_master.csv

---

### Phase 4 — SQL Analysis

Performed business intelligence analysis using MySQL.

#### Revenue Analysis

* Top companies by revenue
* Revenue by country
* Average revenue by country

#### Workforce Analysis

* Largest employers
* Workforce distribution by country
* Revenue per employee

#### Geographic Analysis

* Companies by country
* Country rankings

#### Therapeutic Area Analysis

* Most common therapeutic areas
* Companies active in each area
* Therapeutic area coverage analysis

#### Data Quality Analysis

* Duplicate company detection
* Missing revenue assessment
* Missing employee assessment

---

### Phase 5 — Dashboard Development

Built interactive Power BI/Tableau dashboards.

#### Executive Overview

KPIs:

* Total Companies
* Total Revenue
* Total Employees
* Countries Covered

#### Revenue Analysis

Visuals:

* Top 10 Companies by Revenue
* Revenue by Country
* Average Revenue by Country

#### Therapeutic Area Analysis

Visuals:

* Top Therapeutic Areas
* Companies per Therapeutic Area

#### Workforce Analysis

Visuals:

* Top Companies by Employees
* Employees by Country
* Revenue per Employee

---

## Technologies Used

* Python
* Pandas
* NumPy
* MySQL
* Power BI
* Tableau
* Microsoft Excel
* GitHub

---

## Project Structure

Pharmaceutical-Company-Market-Research-Tracker/

├── README.md

├── Data/
│   ├── PCMRT_Main_Dataset.csv
│   ├── Validated_PCMRT_Main_Dataset.csv
│   ├── therapeutic_area_master.csv

├── Python/
│   ├── validation.py
│   ├── therapeutic_area_split.py

├── SQL/
│   ├── PCMRT_SQL_Analysis.sql

├── Reports/
│   ├── Report.xlsx

├── Dashboard/
│   ├── PCMRT_Dashboard.pbix
│   ├── Dashboard_Screenshots/

├── Documentation/
│   └── Project_Workflow.pdf

---

## Key Insights Generated

* Top pharmaceutical companies by revenue
* Revenue concentration across countries
* Workforce distribution by geography
* Revenue-per-employee benchmarking
* Most common therapeutic areas
* Therapeutic area coverage analysis
* Data quality assessment metrics

---

## Skills Demonstrated

* Market Research
* Data Collection
* Data Validation
* Data Cleaning
* Data Modeling
* SQL Analytics
* Business Intelligence
* Dashboard Development
* Healthcare Analytics
* Data Visualization

---

## Future Enhancements

* Automated data collection pipeline
* API-based company information retrieval
* Historical revenue trend tracking
* Competitive benchmarking dashboard
* Predictive market intelligence reporting

---

## Author

Tanmay Sawant


