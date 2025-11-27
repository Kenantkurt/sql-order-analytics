-- Recreate nb_cat_1 using GROUP BY + JOIN instead of window function

WITH x AS (
    SELECT
        orders_id,
        category_1,
        COUNT(DISTINCT products_id) AS nb_cat_1
    FROM `course17.gwz_sales_17`
    GROUP BY orders_id, category_1
)

SELECT
    s.*,
    x.nb_cat_1
FROM `course17.gwz_sales_17` AS s
LEFT JOIN x
    ON s.orders_id = x.orders_id
   AND s.category_1 = x.category_1;
