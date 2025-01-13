SELECT
ProductName,
OrderDate,
DATEADD(day, 3, OrderDate) AS [Pay Due],
DATEADD(month, 1, OrderDate) AS [Deliver Due]
FROM Orders