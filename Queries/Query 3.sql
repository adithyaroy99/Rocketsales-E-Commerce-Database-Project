-- Query 3: Order Value Categorization (Demonstrates Conditional Logic with CASE)

SELECT OrderID, CustomerID, TotalAmount,
CASE
  WHEN TotalAmount >= 1000 THEN 'High Value'
  WHEN TotalAmount >= 500 THEN 'Medium Value'
  ELSE 'Low Value'
END AS OrderValueCategory
FROM `Order`
ORDER BY TotalAmount DESC;
