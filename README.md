
---

# 🛒 Retail Analytics Dashboard – Power BI End-to-End Project

A complete **Retail Business Intelligence** solution built using **PostgreSQL SQL scripts** and **Power BI**.
The dashboard provides integrated insights into **store performance, sales trends, inventory health, and promotion effectiveness**, suitable for a mid-size supermarket chain.

---

## 📁 Repository Files & Links

| File / Resource                                                                                                                                                     | Description                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| **[📥 Power BI Report (.pbix)](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/Retail_Analytics_Dashboard.pbix)**      | The full interactive Power BI dashboard          |
| **[📄 Data Source SQL (data_source.sql)](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/data_source.sql)**            | PostgreSQL script to create schema & sample data |
| **[📷 Dashboard Screenshot – Overview](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/d1.png)**                       | Executive Overview page                          |
| **[📷 Dashboard Screenshot – Product & Inventory Analysis](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/d2.png)**   | Product & Inventory Analysis page                |
| **[📷 Dashboard Screenshot – Promotions & Store Performance](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/d3.png)** | Promotions & Store Performance page              |

---

## 🔎 Business Scenario

A retail supermarket chain with multiple stores across Sri Lanka needs a business intelligence solution to:

* Monitor **store and region-level sales performance**
* Track **product demand, inventory levels and stock risk**
* Assess **promotion effectiveness** and **profitability**
* Enable data-driven decision making for operations, procurement, pricing, and marketing

This solution covers the full pipeline: database schema & sample data → data modeling → DAX analytics → interactive dashboards.

---

## 🗄️ Data Model & SQL Setup

* The provided **SQL script** (`data_source.sql`) builds a relational database: stores, products, inventory snapshots, sales, and promotions.
* Sample data includes multiple stores, a product catalog, sales history (over a period), inventory daily snapshots, and promotion metadata.
* Data is stored in **PostgreSQL** for wide compatibility with BI tools.

---

## 📊 Power BI Dashboard Overview

The Power BI report comprises **three main pages**, each focused on different business aspects.

### 🧾 Page 1 – Executive Overview

* KPI cards: Total Sales, Gross Margin %, Total Units Sold
* Sales trend line chart (over time)
* Product Sales Performance (Table)
* Sales by Region (Map)
* Filters (slicers): Store Format, Product Category

### 📦 Page 2 – Product & Inventory Analysis

* Table: Products with Units Sold (last 30 days), Inventory Days of Cover
* Conditional formatting to highlight low inventory
* Scatter chart: Units Sold vs. Days of Cover — identifies fast-moving vs low-stock items

### 📈 Page 3 – Promotions & Store Performance

* Table summarizing promotions with incremental sales
* Monthly Sales Waterfall chart showing promotion impact over time
* Bar Chart:  Sales Comparison: During vs Outside Promotions
* Slicers: Promotion Type, Store Format and Name

---

## ✅ Key Metrics & DAX Measures Implemented

* Total Sales (value)
* Total Units Sold
* Total Discount Given
* Total Cost (based on product cost)
* Gross Profit and Gross Margin %
* Average Unit Price
* Sales during promotions vs. outside promotions
* Promotion Lift % (incremental lift from promotions)
* Daily Average Units Sold (last 30 days)
* Inventory Days of Cover per product-store
* Store-level average sales by store format

---

## 💡 Use Cases / Business Questions Addressed

* Which products or categories drive the most revenue and profit?
* Which stores or regions underperform or outperform peers?
* Which items are at risk of stockouts and need replenishment?
* How effective are promotions at boosting sales or profitability?
* Which store-category combinations generate the highest returns?

---

## 🚀 Technologies & Tools Used

* **PostgreSQL**: Database schema + sample data generation (SQL script)
* **Power BI Desktop**: Data modeling, transformations, DAX measures, interactive visuals
* **Power Query / Power BI features**: Data cleaning, relationships, date table

---

## 📷 Dashboard Preview

### Executive Overview

![Executive Overview](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/d1.png)

### Product & Inventory Analysis

![Product & Inventory Analysis](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/d2.png)

### Promotions & Store Performance

![Promotions & Store Performance](https://github.com/shaAhame/Retail-Analytics-Dashboard-Power-BI-End-to-End-Project/blob/main/d3.png)

---

## 📄 How to Use / Get Started

1. Clone or download the repository.
2. Run the SQL script `data_source.sql` in PostgreSQL to generate sample data.
3. Open `Retail_Analytics_Dashboard.pbix` in Power BI Desktop.
4. Ensure data source connection points to your local PostgreSQL database.
5. Interact with slicers (date, region, category, promotion type) and explore visuals for insights.

---

## 🎯 Why This Dashboard Is Industry-Level

* Realistic **end-to-end architecture**: SQL database → data modeling → analytics → dashboard
* Comprehensive coverage: sales, inventory, promotions, store & product performance
* Modular and extensible — easy to scale with real data, enable forecasting, or add more KPIs
* Clear, professional documentation suitable for stakeholders or potential employers

---


📬 **Contact / Credits**  
**Shakeeb Ahamed**  
**B.Sc (Hons) Financial Mathematics and Industrial Statistics – University of Ruhuna, Sri Lanka**  
**Advanced Diploma in Data Science – NIBM, Sri Lanka**  
**GitHub:** https://github.com/shaAhame  

---

**If you like, I can also:**  
✅ Add **badges** (PostgreSQL · Power BI · Retail Analytics)  
✅ Add a **Table of Contents** at the top for better navigation  
✅ Add a short **“Next Steps / Feature Roadmap”** section  



