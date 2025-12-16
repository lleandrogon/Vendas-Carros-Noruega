SELECT
    * 
FROM {{ ref('int_sales_by_make_year_month') }} 
ORDER BY total_quantity DESC