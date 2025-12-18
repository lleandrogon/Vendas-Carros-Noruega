WITH source AS (
    SELECT
        year,
        month,
        quantity_electric
    FROM {{ ref('stg_sales_by_month') }}
),

final AS (
    SELECT
        year,
        month,
        (year || '-' || LPAD(month::text, 2, '0')) AS year_month,
        quantity_electric,

        LAG(quantity_electric, 12)
            OVER (ORDER BY year, month)
            AS quantity_electric_ly,

        ROUND(
            (
                quantity_electric
                - LAG(quantity_electric, 12)
                    OVER (ORDER BY year, month)
            )::numeric
            / NULLIF(
                LAG(quantity_electric, 12)
                    OVER (ORDER BY year, month),
                0
            ),
            4
        ) AS electric_growth_yoy_pct

    FROM source
)

SELECT * FROM final