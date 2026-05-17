# 📊 Customer Behavior Analysis Dashboard

An end-to-end data analytics project that transforms raw consumer transactional data into actionable business strategy. This project demonstrates a complete, production-grade data pipeline: **Data Engineering** using Python/Pandas, **Analytical Querying** via SQL, and **Executive Reporting** through an interactive Power BI dashboard.

---

## 🛠️ Tech Stack & Workflow

The project is structured into three distinct phases to mirror a real-world data professional's workflow:

1. **Data Cleaning & Prep (Python & Pandas):** Ingested the raw, single-table dataset (`customer.csv`). Handled missing values, standardized categorical strings, optimized data types, and structured the data into an analytical-ready format.
2. **Business Logic & Querying (SQL):** Executed targeted queries (`sql_results.sql`) to isolate key performance indicators (KPIs), run behavioral analysis, and validate data integrity before visualization.
3. **Data Visualization (Power BI):** Developed an interactive, 2-page executive dashboard (`customer.pbix`) utilizing custom corporate themes, KPI cards, and dynamic cross-filtering.

---

## 📈 In-Depth Business Insights & Strategic Analysis

While standard dashboards show *what* happened, this analysis dives into the *why* to provide actionable executive recommendations based on granular data intersections.

### 👥 1. Demographic Drivers & Customer Segmentation
* **The Revenue Engine:** The **36–50 age cohort** is the absolute powerhouse of this business, driving **40.17%** ($399.35K) of total revenue. 
* **Gender Spend Distribution:** Male shoppers account for the largest single revenue share at **39.33%** ($390.96K), closely followed by Female shoppers at **35.4%** ($352.06K). 
* **The Subscription Opportunity:** Interestingly, the average spend per transaction remains incredibly stable at **$198.84** across *both* subscribers and non-subscribers. This reveals that non-subscribers carry identical transaction value to loyalty members, marking them as prime, high-conversion targets for subscription marketing campaigns to secure predictable monthly recurring revenue (MRR).
* **The "Other" Demographic Potential:** While the "Other" gender demographic represents the smallest overall slice of the customer base (**25.26%**), their **Average Spend per transaction matches the highest brackets**. They aren't buying cheap items; they are buying high-value items, meaning their lifetime value (LTV) potential is highly profitable if user acquisition is scaled.

### 🚨 2. Critical Product Quality & Revenue Risks (Anomalies)
* **The Electronics Paradox:** **Electronics** is the dominant product category, bringing in **$0.49M** in revenue. However, a deep dive reveals dangerous product satisfaction gaps:
  * **Headphones** generate the highest total revenue ($138.00K) but sit in the bottom 5 for customer satisfaction with a poor **3.09 rating**.
  * **Phones** ($125.60K) and **Laptops** ($115.19K) are massive revenue drivers but suffer from low customer ratings (**2.92** and **3.20** respectively).
  * *Executive Takeaway:* The company's core revenue engines are riding on low-quality perception. This poses an immediate threat of customer churn, high return rates, and long-term brand degradation. Operational intervention with suppliers or quality control is urgently required.
* **The "Jeans" Hidden Gem:** **Jeans** sit at the absolute bottom of revenue generation ($7.55K), yet they boast the **highest customer rating (3.65)** among all low-performing items. This indicates exceptional product-market fit but terrible visibility. Increasing marketing allocation or improving digital placement for Jeans could unlock a highly profitable, highly satisfying revenue stream.

### 🌍 3. Geographic Hotspots & Performance Paradoxes
* **Volume vs. Value:** **New York** leads the entire dataset with **$187.12K** in total revenue. 
* **The Western Value Surge:** However, analyzing *Average Revenue by Location* reveals that **Chicago, Phoenix, and Los Angeles** maintain higher average purchase amounts per customer (~$700) compared to New York. 
  * *Executive Takeaway:* While New York has market density, West Coast and Midwest shoppers buy larger tickets. Expansion strategies should focus on driving transaction *volume* in LA and Phoenix to maximize their naturally higher order value.
* **Untapped Markets:** States like Kansas, Rhode Island, and Idaho represent dead zones, averaging under $4K in total sales, signaling a need for localized brand awareness campaigns.

### 📦 4. Operational & Fulfillment Efficiency
* **Payment Preference:** **Debit Cards** are the heavily favored payment method ($253K), followed closely by Cash and Credit Cards. Alternative methods like Venmo and Bank Transfers are vastly underutilized (~$37K each).
* **Shipping Bottlenecks:** Consumers heavily favor **Standard Shipping** (1,201 orders) and **Express Shipping** (1,199 orders). Premium, higher-margin fulfillment options like **Next Day Air** (648) and **2-Day Shipping** (627) lag behind. 
* **The Fall Revenue Crash:** Seasonality analysis shows exceptional stability through Spring ($243K), Winter ($241K), and Summer ($237K). However, revenue **plummets by over 74% in Autumn ($60K)**. This massive cyclical dip suggests the product catalog is poorly optimized for the fall season, requiring immediate seasonal promotional adjustments.

### 💳 5. Dynamic Slicer Anomalies & Behavioral Intersections
* **The Premium Delivery Disconnect:** When filtering exclusively for **"Subscription: Yes"**, the data reveals that loyalty members do not automatically opt for premium shipping. Despite being brand advocates, subscribers follow the general population trend, heavily relying on Standard and Express shipping. 
  * *Strategic Takeaway:* Offering "Free Express/Next-Day Shipping" as an exclusive perk for the subscription model could exponentially increase subscription sign-ups without radically altering current fulfillment habits.
* **The Discount Dependency Index:** Cross-referencing category performance with the **Discount** slicer shows that **Outerwear ($0.02M)** and **Footwear ($0.11M)** sales drop drastically to near-zero volumes when the "Discount: No" filter is active. 
  * *Strategic Takeaway:* These two categories have low organic demand and are heavily dependent on promotional pricing to clear inventory. Marketing budgets should avoid generic campaigns for these items and focus strictly on high-urgency discount events.
* **Gender-Based Category Dominance:** While Male shoppers drive the highest total revenue overall, filtering by **Category** reveals that **Clothing ($0.18M)** and **Accessories ($0.19M)** are heavily dominated by Female shoppers and the "Other" gender demographic group. 
  * *Strategic Takeaway:* Digital ads for Electronics should be heavily targeted toward the Male demographic, while Clothing and Accessories campaigns should be skewed toward Female and diverse demographics to maximize Return on Ad Spend (ROAS).

### 🛒 6. Basket Value & Inventory Risk Analysis
* **High Volume, Low Margin Risk:** The **30 Unique Items** in inventory are not distributing revenue evenly. With Electronics swallowing **~50% of all capital spent ($0.49M out of $994.18K)**, the business has a massive structural vulnerability. If a supply-chain issue or compliance error hits the electronics sector, the company loses half its revenue instantly. 
  * *Strategic Takeaway:* Diversification is required. The business needs to aggressively scale the up-and-coming Accessories and Clothing lines to balance organizational risk.

---

## 🖥️ Dashboard Architecture

The Power BI dashboard consists of two core analytical views:

### 1. Customer Behavior & Geographic Deep-Dive Overview
Focuses on high-level business health, customer segmentation by age/gender, purchasing channels, and seasonal revenue trends.

<img width="2303" height="1286" alt="Screenshot 2026-05-17 133032" src="https://github.com/user-attachments/assets/2d0b86f9-88e8-4261-bc08-5d5ca20b283f" />

### 2. Product Deep-Dive (Best/Worst Performance)
Focuses on operational product metrics, identifying top/bottom performing products by both revenue and consumer ratings to isolate business risks and opportunities.

<img width="2330" height="1286" alt="Screenshot 2026-05-17 133043" src="https://github.com/user-attachments/assets/bf380a90-3fd8-44f0-9e07-f38280c73a56" />

---

## 📂 Repository Structure

```text
├── customer.csv               # Raw and optimized analytical dataset
├── data_cleaning.ipynb        # Pandas Data Engineering script (handling data types & nulls)
├── sql_results.sql            # Analytical queries running advanced aggregations
└── customer.pbix              # Interactive 2-page Power BI dashboard file
