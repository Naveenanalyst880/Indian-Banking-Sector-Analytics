# Indian Banking Sector Performance & Digital Banking Analytics

<p align="center">
  <strong>An End-to-End Data Analytics Capstone Project</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI"/>
  <img src="https://img.shields.io/badge/Excel-Data%20Analysis-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white" alt="Excel"/>
  <img src="https://img.shields.io/badge/SQL-Data%20Analysis-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL"/>
  <img src="https://img.shields.io/badge/Python-EDA-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python"/>
</p>

## 📌 Project Overview

**Indian Banking Sector Performance & Digital Banking Analytics** is an end-to-end data analytics project designed to explore banking operations, digital banking infrastructure, digital payment activity, and trends in the Indian banking sector.

The project demonstrates how raw datasets can be prepared, cleaned, analyzed, and transformed into meaningful insights using Microsoft Excel, Power Query, SQL, Python, and Power BI.

The main objective is to understand banking and digital banking patterns through data analysis, KPI calculations, SQL queries, exploratory data analysis (EDA), and interactive dashboards.

## 🎯 Project Objectives

- Clean and prepare datasets for reliable analysis.
- Identify and handle missing values, inconsistent entries, and duplicate records.
- Perform data transformation using Excel and Power Query.
- Analyze banking data using SQL queries.
- Perform exploratory data analysis using Python.
- Calculate important banking and digital banking KPIs.
- Build interactive Power BI dashboards for comparing states, banks, infrastructure, and trends.
- Present analytical findings in a clear, professional, and portfolio-ready format.

## 🧰 Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| Microsoft Excel | Data inspection, cleaning, formulas, summaries, and PivotTables |
| Power Query | Data transformation and preparation |
| SQL | Data validation, filtering, aggregation, and analytical queries |
| Python | Data processing and exploratory data analysis |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| Power BI | Interactive dashboards and reports |
| DAX | Measures, KPIs, and analytical calculations |
| GitHub | Project version control and portfolio presentation |

## 🗂️ Project Structure

```text
Indian-Banking-Sector-Analytics/
│
├── datasets/
│   ├── Dataset_1_Digital_Banking_Cleaned.xlsx
│   └── dataset_2_3cleaned.xlsx
│
├── python/
│   ├── Banking_Dataset1_Analysis.ipynb
│   └── Dataset_2_3_Merged_Digital_Payments_and_Analysis.ipynb
│
├── sql/
│   ├── dataset1_sql_analysis.sql
│   └── sql_dql_query.sql
│
├── powerbi/
│   └── banking_dashboards.pbix
│
├── results/
│   ├── yearly_analysis.csv
│   ├── bank_analysis.csv
│   └── state_analysis.csv
│
├── original_files/
│   └── Original project folders and working files
│
└── README.md
```

*Note: The file names shown above are illustrative. Your actual file names and extensions may differ slightly.*
## 🖼️ Power BI Dashboard Previews

### Dashboard 1

<img width="613" height="391" alt="Screenshot 2026-10-22 120032" src="https://github.com/user-attachments/assets/2deec108-456f-4d96-97db-9639294a2472" />

### Dashboard 2

<img width="611" height="344" alt="Screenshot 2026-10-22 120051" src="https://github.com/user-attachments/assets/4effebb1-7d34-41df-a662-8772b3442fc1" />


### Dashboard 3

<img width="610" height="342" alt="Screenshot 2026-10-22 120107" src="https://github.com/user-attachments/assets/da1ce1a9-cc4b-4174-bfad-0fd240641704" />


### Dashboard 4 — State Analysis

<img width="609" height="344" alt="Screenshot 2026-10-22 120122" src="https://github.com/user-attachments/assets/3e7017ba-abc7-424e-b8b2-6f687e1da562" />


### Dashboard 4 — Digital Banking Trends

<img width="610" height="345" alt="Screenshot 2026-10-22 120204" src="https://github.com/user-attachments/assets/c95ce453-8c53-46b9-a076-e9b197a05019" />




## 📊 Project Modules

### 1. Data Collection and Dataset Preparation

The project uses datasets related to digital banking, banking infrastructure, and digital payment activity.

The datasets are organized for cleaning, analysis, and reporting. Original working files and cleaned analytical files are maintained separately to support reproducibility and comparison.

### 2. Microsoft Excel — Data Cleaning & Analysis

Excel is used to inspect and prepare the datasets before further analysis.

**Topics covered:**

- Data inspection and formatting
- Identification of blank cells and missing values
- Handling inconsistent values such as `N/A` and `-`
- Duplicate-record checks
- Data type and formatting checks
- Cleaning and preparing columns for analysis
- Basic statistical summaries
- Formula-based calculations
- PivotTables and grouped summaries
- Financial-year and date-related analysis

Common Excel functions relevant to the project include `IF`, `IFERROR`, `SUM`, `AVERAGE`, `COUNT`, `COUNTA`, `SUMIF`, `SUMIFS`, `COUNTIF`, and `COUNTIFS`.

### 3. Power Query — Data Transformation

Power Query is used to prepare data for analysis and reporting.

**Topics covered:**

- Importing datasets
- Reviewing column names and data types
- Replacing inconsistent or missing entries
- Transforming columns
- Preparing structured data for analysis
- Applying repeatable cleaning steps
- Loading prepared data for further reporting

### 4. SQL — Banking Data Analysis

SQL is used to retrieve, validate, summarize, and analyze banking data.

**Topics covered:**

- `SELECT` and column selection
- `WHERE` conditions
- `ORDER BY`
- `GROUP BY`
- Aggregate functions such as `SUM`, `AVG`, `MIN`, `MAX`, and `COUNT`
- `HAVING` conditions
- Conditional analysis
- Grouped analysis by state, bank, and year
- Data-quality and record-count checks
- Comparative analysis using analytical queries

The SQL scripts are available in the `sql/` folder.

### 5. Python — Exploratory Data Analysis (EDA)

Python is used to explore datasets, calculate summaries, and visualize patterns.

**Libraries:**

- Pandas
- NumPy
- Matplotlib
- Seaborn

**Analysis areas:**

- Loading and inspecting datasets
- Checking rows, columns, and data types
- Missing-value analysis
- Duplicate-record checks
- Descriptive statistics
- Grouping and aggregation
- State-wise analysis
- Bank-wise analysis
- Year-wise trend analysis
- Digital banking and payment comparisons
- Graphical presentation of analytical findings

The Jupyter notebooks are available in the `python/` folder.

### 6. Power BI — Interactive Dashboard Development

Power BI is used to convert prepared data into interactive visual reports.

**Dashboard features:**

- KPI cards
- Interactive slicers and filters
- Bar charts and column charts
- Trend visualizations
- State-wise comparisons
- Bank-wise comparisons
- Digital banking infrastructure analysis
- Bookmark-based navigation between report views
- Dynamic report interaction

**Dashboard views include:**

#### A. State and Banking Analysis
Focuses on comparing banking data across states and related categories.

#### B. Digital Banking Trends & Infrastructure Analysis
Focuses on digital banking infrastructure, digital payment indicators, and trend comparisons.

The Power BI report file is available in the `powerbi/` folder.

### 7. DAX Measures and KPIs

DAX measures in Power BI can be used to calculate and display analytical indicators dynamically.

Examples of KPI categories relevant to this project include:

- Total records or transactions
- Banking infrastructure indicators
- State-wise and bank-wise comparisons
- Digital payment indicators
- Year-wise changes and trends

The specific measures and definitions are maintained in the Power BI report.

## 📈 Analytical Areas

The project focuses on answering questions such as:

- How do banking indicators differ across states?
- How do banks compare across selected indicators?
- How does digital banking infrastructure vary across categories?
- What patterns appear across financial years?
- Which indicators show increases or decreases over time?
- How can SQL and Python summaries support dashboard findings?
- How can data cleaning improve the reliability of reporting?

The answers depend on the selected dataset, available columns, and validated analytical results.

## 📁 Repository Contents

| Folder | Contents |
|---|---|
| `datasets/` | Prepared datasets used for analysis |
| `python/` | Jupyter notebooks for data analysis |
| `sql/` | SQL analytical queries |
| `powerbi/` | Power BI report file |
| `results/` | Exported analytical summaries |
| `original_files/` | Original project files and supporting materials |

## ▶️ How to Use This Project

1. Clone or download this repository.
2. Open the Excel files in the `datasets/` folder to inspect the prepared data.
3. Open the Jupyter notebooks in `python/` using Jupyter Notebook or JupyterLab.
4. Install the required Python libraries if they are not already available.
5. Open the SQL scripts in a compatible SQL editor and configure the appropriate database and table names.
6. Open the `.pbix` file in Microsoft Power BI Desktop.
7. Refresh the report after configuring the correct data-source paths, if required.

**Important:** Data-source paths, database names, and table names may need to be updated on another computer.

## 🛠️ Python Environment

Install the commonly used libraries with:

```bash
pip install pandas numpy matplotlib seaborn jupyter openpyxl
```

Run Jupyter Notebook with:

```bash
jupyter notebook
```

The notebooks may require the dataset files to be placed in the expected paths before execution.

## 🔍 Data Quality and Validation

Data preparation and validation are important parts of this project.

The workflow includes:

- Reviewing missing and inconsistent values
- Checking for duplicate records
- Validating column types and formats
- Reviewing row counts after cleaning
- Checking summary outputs
- Comparing analytical results across tools where applicable

Missing-value treatment should depend on the meaning of each column. Statistical imputation, such as median replacement, should be documented and used only where appropriate.

## 💡 Key Learning Outcomes

Through this project, the following practical skills are demonstrated:

- End-to-end data analytics workflow
- Data cleaning and transformation
- Excel-based analysis
- SQL querying and aggregation
- Python-based exploratory data analysis
- Data visualization
- Power Query transformations
- Power BI report development
- DAX-based KPI calculations
- Organizing analytical outputs
- Presenting a technical project through GitHub

## 🚀 Future Enhancements

Possible future improvements include:

- Additional official banking datasets
- More detailed state-wise and bank-wise comparisons
- Further validation of financial-year trends
- Additional Power BI drill-through pages
- Improved documentation of DAX measures
- Automated data-refresh workflows
- More detailed project findings and recommendations

## ⚠️ Data and Methodology Note

Dataset provenance should be verified from the original source documentation before making claims about official RBI or other government data. Any synthetic, illustrative, or modified datasets should be clearly identified as such. Analytical findings should be interpreted according to the available data and its limitations.

## 👨‍💻 Author

**Katravath Naveen**

B.Tech — Computer Science and Engineering

**Project:** Indian Banking Sector Performance & Digital Banking Analytics

**Skills demonstrated:** Excel | Power Query | SQL | Python | Power BI | DAX | Data Cleaning | Exploratory Data Analysis

---

⭐ If you find this project useful, feel free to explore the notebooks, SQL scripts, datasets, and Power BI report.

