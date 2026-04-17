# Northwind Data Warehouse Project

## [cite_start]Team: Big Data Big Team [cite: 1]

## Project Overview
[cite_start]This project focuses on transforming operational data from the Northwind source system into a structured dimensional model (Star Schema)[cite: 1]. [cite_start]The architecture facilitates advanced business analytics by organizing data into a format optimized for querying and reporting[cite: 1].

## Business Goals
The primary objective is to enable the business to:
* [cite_start]**Analyze Sales Performance**: Evaluate trends across different time dimensions, including Year, Month, and Day[cite: 1].
* [cite_start]**Revenue Monitoring**: Calculate and track total sales for specific monthly periods[cite: 1].
* [cite_start]**Inventory & Supplier Management**: Monitor product inventory levels and assess the impact of various suppliers on total revenue[cite: 1].
* [cite_start]**Customer Pattern Recognition**: Identify purchasing behaviors and determine how discounts influence overall sales volume[cite: 1].

## Technical Architecture
The data follows an ETL (Extract, Transform, Load) pipeline through the following stages:
1.  [cite_start]**Source**: Northwind operational database[cite: 1].
2.  [cite_start]**Staging Environment**: Data is first moved into the `staging_project1` database[cite: 1].
3.  [cite_start]**Data Warehouse**: Final data is loaded into a structured Star Schema[cite: 1].

### Dimensional Model (Star Schema)
The data warehouse is organized around a central Fact table and several Dimension tables:
* [cite_start]**Fact_Sales**: Stores transactional data including `Quantity Sold`, `Unit Price At Sale`, `Total Sales Amount`, and `Discount Percentage`[cite: 1].
* **Dimension Tables**:
    * [cite_start]**Date_Dim**: Year, Month, Day[cite: 1].
    * [cite_start]**Customer_Dim**: Customer ID, address, and phone[cite: 1].
    * [cite_start]**Product_Dim**: Product name, unit price, and stock status[cite: 1].
    * [cite_start]**Dim_Employee**: Sales staff information[cite: 1].
    * [cite_start]**Suppliers_Dim**: Supplier details[cite: 1].
    * [cite_start]**Region_Dim**: Regional descriptions[cite: 1].

## Key Analytics & Queries
The project implements several analytical SQL queries, including:
* [cite_start]**Monthly Sales Trends (Query 7)**: Summarizes business performance by grouping sales into calendar months to track revenue and items sold[cite: 1].
* [cite_start]**Top Performance Analysis**: Identifies peak business periods and the factors driving success during those times[cite: 1].
* [cite_start]**SCD Type 2 Implementation**: Tracks historical changes in customer contact information to maintain data accuracy over time[cite: 1].

## Reporting & Visualization
The project includes Power BI dashboards for visual data exploration, featuring:
* [cite_start]**Sales Overviews**: Total transactions and sales partitioned by product name[cite: 1].
* [cite_start]**NorthWind Sales Summary**: Comparisons of total items sold and regional performance metrics[cite: 1].
