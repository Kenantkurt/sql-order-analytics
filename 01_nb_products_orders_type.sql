-- Calculate number of distinct products per order (nb_products)
-- Classify orders into single_product vs multi_product

CREATE OR REPLACE VIEW `course17.gwz_sales_17_orders_type` AS
WITH x AS (
    SELECT
        orders_id,
        COUNT(DISTINCT products_id) AS nb_products
    FROM `course17.gwz_sales_17`
    GROUP BY orders_id
)

SELECT
    s.*,
    x.nb_products,
    CASE 
        WHEN x.nb_products = 1 THEN 'single_product'
        ELSE 'multi_product'
    END AS orders_type
FROM `course17.gwz_sales_17` AS s
LEFT JOIN x 
    ON s.orders_id = x.orders_id;
