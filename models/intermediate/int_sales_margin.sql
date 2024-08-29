SELECT 
  date_date,
  orders_id,
  products_id,
  revenue,
  quantity,
  CAST(purchase_price AS FLOAT64) AS purchase_price,
  quantity * CAST(purchase_price AS FLOAT64) AS purchase_cost,
  revenue - (quantity * CAST(purchase_price AS FLOAT64)) AS margin
FROM {{ ref('stg_raw__sales') }} AS sales
JOIN {{ ref('stg_raw__product') }} AS product
USING (products_id)