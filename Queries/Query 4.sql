-- Query 4: Products Never Ordered (Demonstrates Subqueries)

SELECT p.ProductID, p.Name
FROM Product p
WHERE NOT EXISTS (
  SELECT 1 FROM OrderItem oi WHERE oi.ProductID = p.ProductID
);
