{{ config(
    materialized='view'
) }}

SELECT
    {% if target.name == 'sqlserver' %}
        CAST(User_ID AS VARCHAR) AS User_ID,
        CAST(Product_ID AS VARCHAR) AS Product_ID,
        CAST(Category AS VARCHAR) AS Category,
        CAST(Price AS FLOAT) AS Price,
        CAST(Discount AS INT) AS Discount,
        CAST(Final_Price AS FLOAT) AS Final_Price,
        CAST(Payment_Method AS VARCHAR) AS Payment_Method,
        CAST(Purchase_Date AS DATE) AS Purchase_Date
    {% else %}
        CAST(User_ID AS STRING) AS User_ID,
        CAST(Product_ID AS STRING) AS Product_ID,
        CAST(Category AS STRING) AS Category,
        CAST(REPLACE(Price, ',', '.') AS DOUBLE) AS Price,
        CAST(Discount AS INT) AS Discount,
        CAST(REPLACE(Final_Price, ',', '.') AS DOUBLE) AS Final_Price,
        CAST(Payment_Method AS STRING) AS Payment_Method,
        CAST(Purchase_Date AS DATE) AS Purchase_Date
    {% endif %}
FROM {{ source('sqlserver_data', 'ecommerce') }}



