# sql-order-analytics
# 🧾 SQL Order Analytics Pipeline – Window Functions & GROUP BY + JOIN

![SQL](https://img.shields.io/badge/Tool-SQL-blue)
![BigQuery](https://img.shields.io/badge/Platform-Google%20BigQuery-red)
![DataAnalysis](https://img.shields.io/badge/Skill-Order%20Analytics-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

This project builds a complete SQL analytical pipeline using the  
`gwz_sales_17` dataset to understand product–order relationships,  
turnover proportions, and category diversity using both **window functions**  
and their decomposition into **GROUP BY + JOIN** operations.

---

## 📊 What I Did

- Analyzed product-level sales data from `gwz_sales_17`  
- Used window functions to compute:
  - number of products per order  
  - order type classification (single vs. multi-product)  
  - total turnover per order  
  - turnover proportion per product  
  - number of distinct products within each Level-1 category  
  - mono-category vs. multi-category order type  
- Rebuilt all window function logic using **GROUP BY + JOIN** to show equivalence  
- Saved results as analytical views in BigQuery:
  - `gwz_sales_17_orders_type`  
  - `gwz_sales_17_turnover_percent`  
  - `gwz_sales_17_cat1`  
- Structured the SQL into clear, step-by-step transformations  

---

## 🛠 Tools & Methods

**Tools:**  
- Google BigQuery  
- SQL  

**Techniques:**  
- Window functions (`OVER(PARTITION BY ...)`)  
- CTEs / subqueries  
- GROUP BY aggregation  
- LEFT JOIN operations  
- Conditional logic with CASE WHEN  
- Analytical view creation  
- Order-level analysis  

---

## 📈 Key Insights

- Many orders contain multiple products, indicating bundled purchases  
- Turnover contribution per product highlights primary vs. secondary items  
- Several orders contain multiple Level-1 categories → cross-category baskets  
- Category diversity allows classification of orders as mono-category or multi-category  
- Window functions provide compact, efficient analytical transformations  
- GROUP BY + JOIN decomposition reveals the underlying logic behind window operations  

---

## 📌 Final Results

- Built `nb_products` and `orders_type` to classify single vs. multi-product orders  
- Computed order-level turnover and each product’s percentage contribution  
- Identified category diversity using `nb_cat_1` and `orders_cat_type`  
- Recreated all calculations using GROUP BY + JOIN for transparency and validation  
- Produced three final analytical views for downstream use  

---

## 📁 Project Structure

- `01_nb_products_orders_type.sql` → Count products per order + single/multi-product classification  
- `02_turnover_percent.sql` → Order turnover + product turnover share (%), using CTE  
- `03_category_diversity.sql` → Distinct category product count + mono/multi-category label  
- `04_total_turnover_groupby_join.sql` → Decomposing SUM window function using GROUP BY + JOIN  
- `05_category1_groupby_join.sql` → Reproducing nb_cat_1 using GROUP BY + JOIN  

---

## 🚀 How to Run This Project

1. Open **Google BigQuery**  
2. Load the dataset:
   - `course17.gwz_sales_17`
3. Run SQL files in this sequence:
   1. `01_nb_products_orders_type.sql`  
   2. `02_turnover_percent.sql`  
   3. `03_category_diversity.sql`  
   4. `04_total_turnover_groupby_join.sql`  
   5. `05_category1_groupby_join.sql`  
4. Access the final analytical views:
   - `gwz_sales_17_orders_type`  
   - `gwz_sales_17_turnover_percent`  
   - `gwz_sales_17_cat1`

---

## 🔗 SQL Files

- `01_nb_products_orders_type.sql`  
- `02_turnover_percent.sql`  
- `03_category_diversity.sql`  
- `04_total_turnover_groupby_join.sql`  
- `05_category1_groupby_join.sql`  

---

## 🔖 Tags

`#SQL` `#BigQuery` `#WindowFunctions`  
`#OrderAnalytics` `#DataAnalytics` `#Ecommerce`  
`#GROUPBYJOIN` `#CTE` `#TurnoverAnalysis`  
