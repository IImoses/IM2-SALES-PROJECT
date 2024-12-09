# IM2 Sales Performance Dashboard

This repository contains a data analysis project focused on sales performance, using **SQL Server** for data exploration and **Power BI** for data visualization. The project aims to showcase key insights into total revenue, sales by region, customer, product category, and shipping mode. The analysis explores the relationships between these elements to provide a comprehensive view of the business’s sales performance.

## Project Overview

The project analyzes sales data from an e-commerce company to identify trends, patterns, and insights that can help improve decision-making. The dataset contains the following columns:

- Row ID
- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Customer Name
- Segment
- Country
- City
- State
- Postal Code
- Region
- Product ID
- Category
- Sub-Category
- Product Name
- Sales

## Technologies Used

- **SQL Server**: Used for data extraction, cleaning and basic exploratory analysis.
- **Power BI**: Used for creating interactive dashboards and visualizations.

## Data Analysis Process

### 1. Data Collection & Exploration  
SQL queries were used to load, clean, and explore the dataset. The data was filtered for duplicates and joined across different tables to enrich the analysis.

### 2. Data Cleaning  
- Removed duplicate records.
- Transformed and formatted dates correctly.
- Calculated total sales and other important metrics.

### 3. Exploratory Analysis
Some of the Analysis done:
- **Sales by Region**: To understand the regional performance of sales, I aggregated the total sales for each region. This helped identify which regions contributed the most to overall sales, highlighting areas of strong performance and potential opportunities for growth.

- **Top 5 Customers by Sales**: I identified the top 5 customers who contributed the most to total sales. This analysis gave insights into high-value customers and helped understand customer spending patterns.

- **Order Count by Segment**: I explored the number of orders placed by each customer segment. This allowed me to see which segments had the highest order volume, providing insights into customer behavior and preferences.

- **Product Category Analysis**: I also analyzed product categories to determine which categories were the most frequently sold. This analysis helped uncover trends in product popularity and customer purchasing behavior. 

### 4. Visualization  
Power BI was used to build interactive dashboards that provide insights into:
- **Total Revenue**: A KPI card displaying total sales.
- **Sales by Region**: A bar chart showing the sales distribution across different regions.
- **Sales by Customer**: A chart showing the top customers based on total sales.
- **Monthly Sales Trends**: A line chart showing trends in sales across different months.
- **Sales by Product Category**: A pie chart displaying the proportion of sales in different product categories.
- **Sales by Shipping Mode**: A bar chart showing the breakdown of sales by different shipping modes.

### 5. Key Insights  
The dashboard allows the exploration of sales data across different segments, highlighting trends over time, key customer segments, and product performance.

 
