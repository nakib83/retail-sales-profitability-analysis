SELECT CASE 
WHEN sales < 100 THEN 'Under 100'
WHEN sales BETWEEN 100 AND 500 THEN '100-500'
WHEN sales BETWEEN 500 AND 1000 THEN '500-1000'
WHEN sales BETWEEN 1000 AND 5000 THEN '1000-5000'
ELSE 'Over 5000'
END AS sales_range,
COUNT(*) AS order_count,
ROUND(AVG(sales), 2) AS avg_sales,
ROUND(AVG(profit), 2) AS avg_profit,
ROUND(AVG(profit/sales * 100), 2) AS profit_margin_percent,
SUM(CASE WHEN profit < 0 THEN 1 ELSE 0 END) AS loss_count
FROM sales
WHERE sales > 0
GROUP BY sales_range
ORDER BY MIN(sales);