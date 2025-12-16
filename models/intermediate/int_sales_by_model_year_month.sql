WITH source AS (
    SELECT
        year,
        month,
        model,
        SUM(quantity) AS total_quantity
    FROM {{ ref('stg_sales_by_model') }}
    GROUP BY year, month, model
)

SELECT * FROM source