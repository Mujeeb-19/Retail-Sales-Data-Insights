SELECT
    year,
    month,
    SUM(Total_amount) AS Total_Sales,
    AVG(Total_amount) AS Average_Sales
FROM RetailTransactions4
GROUP BY year, month
ORDER BY year, month;
