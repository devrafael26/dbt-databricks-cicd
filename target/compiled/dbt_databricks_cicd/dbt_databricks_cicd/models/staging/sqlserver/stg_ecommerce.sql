

SELECT
    
        CAST(User_ID AS VARCHAR) AS User_ID,
        CAST(Product_ID AS VARCHAR) AS Product_ID,
        CAST(Category AS VARCHAR) AS Category,
        CAST(Price AS FLOAT) AS Price,
        CAST(Discount AS INT) AS Discount,
        CAST(Final_Price AS FLOAT) AS Final_Price,
        CAST(Payment_Method AS VARCHAR) AS Payment_Method,
        CAST(Purchase_Date AS DATE) AS Purchase_Date
    
FROM "MY_DB"."dbo"."ecommerce"