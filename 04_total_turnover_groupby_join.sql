-- Recreate orders_turnover using GROUP BY + JOIN instead of window function

WITH x AS (
    SELECT
        orders_id,
        SUM(turnover) AS orders_turnover
    FROM `course17.gwz_sales_17`
    GROUP BY orders_id
)

SELECT
    s.*,
    x.orders_turnover
FROM `course17.gwz_sales_17` AS s
LEFT JOIN x
    ON s.orders_id = x.orders_id;
