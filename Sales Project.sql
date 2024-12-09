SELECT *
FROM sales

SELECT * INTO sales2
FROM sales

SELECT *
FROM sales2

--check for nulls
SELECT *
FROM sales2 
WHERE Order_ID IS NULL OR Customer_ID IS NULL OR Product_ID IS NULL


--check for duplicates
SELECT Order_ID, Product_ID, COUNT(*)
FROM sales2
GROUP BY Order_ID, Product_ID
HAVING COUNT(*) > 1

--delete duplicates
WITH CTE_duplicates AS(
SELECT Order_ID, ROW_NUMBER() OVER (PARTITION BY Order_ID, Product_ID ORDER BY Order_ID) AS RowNum
FROM sales2)

DELETE FROM sales2
WHERE Order_ID IN (
	SELECT Order_ID 
	FROM CTE_duplicates
	WHERE RowNum > 1 )

--validate order and shipping dates to see if there are errors
SELECT *
FROM sales2
WHERE Order_Date > Ship_Date

--EXPLORATORY ANALYSIS

--Overall Sales by Region
SELECT Region, ROUND(SUM(Sales),2) AS TotalSales
FROM sales2
GROUP BY Region
ORDER BY TotalSales DESC


--Top 5 Customers by Sales
SELECT TOP 5 Customer_Name,  ROUND(SUM(Sales),2) AS AmountSpent
FROM sales2
GROUP BY Customer_Name
ORDER BY AmountSpent DESC
 

--Order Count by Segment
SELECT Segment, COUNT(*) AS OrderCount
FROM sales2
GROUP BY Segment
ORDER BY OrderCount DESC

-- Most Frequently Sold Product Categories
SELECT Category, COUNT(*) AS TotalOrders
FROM sales2
GROUP BY Category
ORDER BY NumberSold DESC

--Shipping Mode Performance
SELECT Ship_Mode, COUNT(*) AS TotalOrders, ROUND(SUM(Sales),2) AS TotalSales
FROM sales2
GROUP BY Ship_Mode
ORDER BY TotalSales DESC;

--the average time taken to ship orders based on the shipping mode
SELECT Ship_Mode, (DATEDIFF(Day,Order_Date, Ship_Date)) AS AvgDaysBeforeShipping
FROM sales2
GROUP BY Ship_Mode
ORDER BY AvgDaysBeforeShipping ASC 


--Sales Over Time:
SELECT YEAR(Order_Date) AS Year, DATENAME(month, Order_Date) AS Month, ROUND(SUM(Sales), 2) AS TotalSales
FROM sales2
GROUP BY YEAR(Order_Date), DATENAME(month, Order_Date), MONTH(Order_Date)
ORDER BY YEAR(Order_Date), MONTH(Order_Date)

--which states had the most sales
SELECT State, ROUND(SUM(Sales), 2) AS TotalSales
FROM sales2
GROUP BY State
ORDER BY TotalSales DESC

--which REGION had the most sales
SELECT Region, ROUND(SUM(Sales), 2) AS TotalSales
FROM sales2
GROUP BY Region
ORDER BY TotalSales DESC