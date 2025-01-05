SELECT
    Age_Group,
    COUNT(*) AS Number_of_Transactions,
    SUM(Total_amount) AS Total_Spending,
    AVG(Total_amount) AS Average_Spending
FROM RetailTransactions4
GROUP BY Age_Group
ORDER BY Total_Spending DESC;
