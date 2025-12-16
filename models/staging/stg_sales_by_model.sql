WITH source AS (
    SELECT
        "Year" AS year,
        "Month" AS month,
        "Make" AS make,
        "Model" AS model,
        "Quantity" AS quantity
    FROM {{ source('raw', 'sales_by_model') }}
    WHERE "Model" IS NOT NULL
)

SELECT * FROM source