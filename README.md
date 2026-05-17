# 📊 Customer Behavior Analysis Dashboard

An end-to-end data analytics project that transforms raw consumer transactional data into actionable business strategy. This project demonstrates a complete data pipeline: **Data Engineering** using Python/Pandas, **Analytical Querying** via SQL, and **Executive Reporting** through an interactive Power BI dashboard.

---

## 🛠️ Tech Stack & Workflow

The project is structured into three distinct phases to mirror a real-world data professional's workflow:

1. **Data Cleaning & Prep (Python & Pandas):** Ingested the raw, single-table dataset. Handled missing values, optimized data types, and structured the data into a clean, analytical-ready format.
2. **Business Logic & Querying (SQL):** Executed targeted queries to isolate key performance indicators (KPIs), analyze revenue distributions, and extract specific answers to business questions.
3. **Data Visualization (Power BI):** Built a highly interactive, 2-page executive dashboard utilizing custom themes, KPI cards, and dynamic cross-filtering.

---

## 📈 Key Insights Uncovered

* **Demographic Drivers:** The **36–50 age group** is the primary revenue engine, accounting for **40.17%** ($399.35K) of total spend. Male shoppers represent the largest gender share at **39.33%**.
* **Product Performance:** **Electronics** is the dominant product category, bringing in **$0.49M**. While **Headphones** lead overall product revenue ($138K), they rank among the lowest in average user rating (3.09), highlighting a crucial gap in customer satisfaction.
* **Geographic Trends:** **New York** is the top-performing market with **$187.12K** in revenue, while states like Kansas and Rhode Island represent untapped or low-performing markets (under $4K).
* **Operational Preferences:** Consumers overwhelmingly prefer **Debit Cards** for payments ($253K) and heavily rely on **Standard and Express shipping** options (over 1,200 orders each).

---

## 🖥️ Dashboard Architecture

The Power BI dashboard consists of two core analytical views:

### 1. Customer Demographics & Behavior Overview
Focuses on high-level business health, customer segmentation by age/gender, purchasing channels, and seasonal revenue trends.
*(Tip: Replace the placeholder below with your actual repository image path once uploaded)*
<img width="2303" height="1286" alt="Screenshot 2026-05-17 133032" src="https://github.com/user-attachments/assets/2d0b86f9-88e8-4261-bc08-5d5ca20b283f" />


### 2. Product & Geographic Deep-Dive (Best/Worst)
Focuses on operational metrics, identifying top and bottom performing products by both revenue and consumer ratings, alongside regional sales performance.
<img width="2330" height="1286" alt="Screenshot 2026-05-17 133043" src="https://github.com/user-attachments/assets/bf380a90-3fd8-44f0-9e07-f38280c73a56" />

---

## 📂 Repository Structure


├── customer.csv               # Raw and cleaned dataset files
├── data_cleaning.ipynb        # Pandas Data Cleaning Notebook (.ipynb)
├── sql_results.sql            # Analytical SQL queries used for data validation (.sql)
├── customer.pbix              # Power BI Desktop file (.pbix)
