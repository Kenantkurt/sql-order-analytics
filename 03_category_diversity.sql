-- Count distinct products per category within each order (nb_cat_1)
-- Classify orders as mono-category vs multi-category

CREATE OR REPLACE VIEW `course17.gwz_sales_17_cat1` AS
WITH x AS (
    SELECT
        *,
        COUNT(DISTINCT products_id) OVER (PARTITION BY orders_id, category_1) AS nb_cat_1
    FROM `course17.gwz_sales_17`
)

SELECT
    *,
    CASE 
        WHEN nb_cat_1 = 1 THEN 'mono_category'
        ELSE 'multi_category'
    END AS orders_cat_type
FROM x;
