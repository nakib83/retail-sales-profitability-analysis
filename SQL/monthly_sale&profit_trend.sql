SELECT TO_CHAR(order_date, 'YYYY-MM') AS order_month, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY TO_CHAR(order_date, 'YYYY-MM');