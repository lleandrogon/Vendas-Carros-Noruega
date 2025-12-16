SELECT
    *
FROM {{ ref('int_sales_by_model_year_month') }}
ORDER BY total_quantity DESC