WITH source AS (
    SELECT
        "Year" AS year,
        "Month" AS month,
        "Make" AS make,
        "Quantity" AS quantity
    FROM {{ source('raw', 'sales_by_make') }}
    WHERE "Make" IS NOT NULL
)

SELECT * FROM source