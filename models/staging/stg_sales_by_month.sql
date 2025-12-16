WITH source AS (
    SELECT
        "Year" AS year,
        "Month" AS month,
        "Quantity" AS quantity,
        "Import" AS total_import,
        "Used" AS used_quantity,
        "Quantity_Diesel" AS quantity_diesel,
        "Quantity_Hybrid" AS quantity_hybrid,
        "Quantity_Electric" AS quantity_electric,
        "Import_Electric" AS import_electric
    FROM {{ source('raw', 'sales_by_month') }}
)

SELECT * FROM source