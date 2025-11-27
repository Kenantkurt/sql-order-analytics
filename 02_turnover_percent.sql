-- Calculate total order turnover and product turnover proportion (%)

CREATE OR REPLACE VIEW `course17.gwz_sales_17_turnover_percent` AS
WITH x AS (
    SELECT
        *,
        SUM(turnover) OVER (PARTITION BY orders_id) AS orders_turnover
    FROM `course17.gwz_sales_17`
)

SELECT
    *,
    ROUND(turnover / orders_turnover * 100, 2) AS percent_turnover
FROM x;
