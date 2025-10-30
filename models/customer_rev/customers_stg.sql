SELECT CustomerID,
    Firstname,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_at,
    CONCAT(Firstname, ' ', LastName) AS CustomerName
FROM
    {{ source('landing', 'customers') }}