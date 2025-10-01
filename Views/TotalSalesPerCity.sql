CREATE VIEW TotalSalesPerCity AS
SELECT a.City, COUNT(o.OrderID) AS TotalOrders, SUM(o.TotalAmount) AS TotalSales
FROM `Order` o
JOIN Address a ON o.ShippingAddressID = a.AddressID
GROUP BY a.City;
