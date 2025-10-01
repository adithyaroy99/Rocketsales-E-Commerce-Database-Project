-- Query 2: Products with High Average Ratings (Demonstrates Aggregation with GROUP BY and HAVING)

SELECT p.ProductID, p.Name, AVG(r.Rating) AS AvgRating, COUNT(r.ReviewID) AS NumReviews
FROM Product p
JOIN Review r ON p.ProductID = r.ProductID
GROUP BY p.ProductID
HAVING AvgRating >= 4
ORDER BY AvgRating DESC, NumReviews DESC;
