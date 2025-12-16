WITH source AS (
    SELECT
        year,
        month,
        make,
        SUM(quantity) AS total_quantity
    FROM {{ ref('stg_sales_by_make') }}
    GROUP BY year, month, make 
)

SELECT * FROM source