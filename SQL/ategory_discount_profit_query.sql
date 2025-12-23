
SELECT category,
ROUND(AVG(discount),2) AS avg_discount,
ROUND(SUM(profit),2) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit;