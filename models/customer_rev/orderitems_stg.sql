SELECT
    OrderID,
    OrderitemID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS TotalPrice,
    Updated_at
FROM
    {{ source('landing', 'orderitems') }}