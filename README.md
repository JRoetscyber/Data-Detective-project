# 🛒 TechTrendz: E-Commerce Sales Strategy Analysis

![SQL](https://img.shields.io/badge/Language-Oracle%20SQL-orange)
![Status](https://img.shields.io/badge/Status-Completed-green)
![Domain](https://img.shields.io/badge/Domain-Retail%20Analytics-blue)

## 📖 Executive Summary
**TechTrendz** is a mid-sized online electronics retailer facing challenges with customer retention and inventory management. This project analyzes **24 months of transactional data** to identify high-value customers, pinpoint profitable product lines, and uncover seasonal sales dips.

The insights generated from this SQL analysis are currently being used to restructure the Q3 marketing budget and launch a targeted "Winter Slump" recovery campaign.

---

## 📂 Project Structure
```text
TechTrendz-SQL-Analysis/
├── 📂 data/                # Raw CSV files (Customers, Products, Orders)
├── 📄 setup_schema.sql     # Script to create tables and import data
├── 📄 analysis_queries.sql # The core business logic and problem solving
└── 📄 README.md            # Project documentation
````

---

## 🗄️ Entity Relationship Diagram (ERD)

The analysis is based on a **Star Schema architecture** consisting of three normalized tables:

**CUSTOMERS:** Contains demographic data (Name, Region, Join Date).
**PRODUCTS:** Inventory details including Category and Pricing.
**ORDERS:** The fact table linking Customers to Products with transactional timestamps.

> 💡 **Pro Tip:** Use [dbdiagram.io](https://dbdiagram.io/) to draw your 3 tables, take a screenshot, and add it here. Recruiters love seeing this.

---

## 💡 Key Business Problems & SQL Solutions

### 1. The "VIP" Loyalty Program

**Problem:** Identify the top 3 customers by total lifetime value (LTV) for exclusive rewards.
**Challenge:** Data was across three tables; some high-value orders contained NULLs.

```sql
/* Solution: 3-Table Join with Null Handling */
SELECT
    c.NAME,
    NVL(SUM(o.QUANTITY * p.PRICE), 0) AS TOTAL_SUM_SPEND
FROM
    CUSTOMERS c
LEFT JOIN ORDERS o ON c.CUSTOMER_ID = o.CUSTOMER_ID
LEFT JOIN PRODUCTS p ON o.PRODUCT_ID = p.PRODUCT_ID
GROUP BY
    c.NAME
ORDER BY
    TOTAL_SUM_SPEND DESC
FETCH FIRST 3 ROWS ONLY;
```

✅ **Insight:** The top customer, Christian Richardson, has spent R61,105, nearly 15% higher than the average top-tier user.

---

### 2. Revenue by Category

**Problem:** Determine which product category drives the highest gross revenue to optimize stock levels.
**Challenge:** Required formatting currency for executive reporting and aggregating large datasets.

```sql
/* Solution: Aggregation with Oracle String Formatting */
SELECT
    p.CATEGORY,
    'R'||TO_CHAR(NVL(SUM(p.PRICE * o.QUANTITY), 0), 'FM999,999,999.99') AS Total_Revenue
FROM
    PRODUCTS p
LEFT JOIN ORDERS o ON p.PRODUCT_ID = o.PRODUCT_ID
GROUP BY p.CATEGORY;
```

✅ **Insight:** Electronics is the dominant category (R1.8M+), outperforming "Home" and "Accessories" combined.

---

### 3. Investigating the "June Slump"

**Problem:** CEO suspected a recurring drop in sales mid-year.
**Challenge:** Extracting monthly trends from timestamped data across multiple years.

```sql
/* Solution: Date Truncation and Grouping */
SELECT
    TRUNC(ORDER_DATE, 'MM') AS year_month,
    COUNT(ORDER_ID) AS amount_orders
FROM
    ORDERS
GROUP BY TRUNC(ORDER_DATE, 'MM')
ORDER BY TRUNC(ORDER_DATE, 'MM') ASC;
```

✅ **Insight:** Confirmed a ~12% drop in order volume every June compared to May (2024 & 2025). Validates need for a "Mid-Year Sale" to boost Q2 figures.

---

## 🛠️ Technical Skills Demonstrated

* **Advanced Joins:** LEFT JOIN vs INNER JOIN to ensure data integrity
* **Data Cleaning:** Using NVL to handle nulls in calculations
* **Date Manipulation:** Using TRUNC for time-series bucket analysis
* **Reporting:** Formatting financial outputs using TO_CHAR and concatenation (||)

---

## 🚀 How to Run

1. Clone this repository.
2. Import the CSV files in the `/data` folder into your SQL database (Oracle/PostgreSQL recommended).
3. Run the queries in `analysis_queries.sql`.

---

**Author:** Jonathan Roets | Junior Data Analyst
