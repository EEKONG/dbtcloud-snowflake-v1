SELECT
    OrderID,
    OrderDate,
    CustomerID,
    EmployeeID,
    StoreID,
    STATUS AS StatusCD,
    CASE
        WHEN STATUS = 01 THEN 'In Progress'
        WHEN STATUS = 02 THEN 'Completed'
        WHEN STATUS = 03 THEN 'Cancelled'
    END AS StatusDescr,
    CASE
        WHEN StoreID = 1000 THEN 'Online'
        ELSE 'In-store'
    END AS OrderChannel,
    Updated_at,
    current_timestamp as dbt_updated_at
FROM
    {{ source('landing', 'orders') }}