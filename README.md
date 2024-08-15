# eBay-Women-Perfume-Sales-Analysis

**Project Overview**
This project involves analyzing sales data for women’s perfumes listed on eBay. The dataset contains information about perfume listings, including brand, type, price, and sales figures. The goal is to gain insights into the sales performance.

**Dataset**
The dataset used for this analysis is named eBay Women Perfume and includes the following columns:

brand: Brand of the perfume
title: Title of the specific perfume
type: Type of perfume (e.g., eau de parfum, eau de toilette)
price: Price of the perfume
pricewithcurrency: Price with currency notation
available: Number of units available
sold: Number of units sold
lastupdated: Timestamp of the last update
itemlocation: Location of the item

**Data Cleaning**

Data cleaning was performed to prepare the dataset for analysis. The cleaning steps included:

Removing Duplicates: Identified and removed any duplicate records.
Trimming Whitespace: Removed leading and trailing whitespace from text fields.
Converting Data Types: Converted columns to appropriate data types (e.g., numeric conversion for price).
Handling Missing Values: Replaced or imputed missing values where necessary.
Standardizing Dates: Ensured date formats are consistent.

Total Sales by Brand: Calculated the total sales amount for each brand.

SELECT 
  brand,
  FORMAT('%.2f', SUM(price * sold)) AS total_sales
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_cleaned`
GROUP BY brand
ORDER BY CAST(total_sales AS FLOAT64) DESC

Average Price per Brand: Computed the average price of perfumes for each brand.

SELECT 
  brand,
  AVG(price) AS average_price
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_cleaned`
GROUP BY brand
ORDER BY average_price DESC

**Visualizations**

Coming soon

**Results and Insights**

Total Sales and Average Price by Brand
The analysis of total sales and average price per brand provided the following insights:

Juicy Couture:

Total Sales: $441,570.07
Average Price: Not among the highest
Jimmy Choo:

Total Sales: $427,851.20
Average Price: Not among the highest
Elizabeth Taylor:

Total Sales: $383,075.30
Average Price: Not among the highest
Coach:

Total Sales: $334,963.85
Average Price: Not among the highest
Givenchy:

Total Sales: $317,826.06
Average Price: Not among the highest
Creed:

Total Sales: Not among the highest
Average Price: $186.995 (Highest)
Giardini Di Toscana:

Total Sales: Not among the highest
Average Price: $140.00 (Second Highest)
Roja:

Total Sales: Not among the highest
Average Price: $129.99 (Third Highest)
As Picture Show:

Total Sales: Not among the highest
Average Price: $128.88 (Fourth Highest)
Michael Kors:

Total Sales: Not among the highest
Average Price: $116.61 (Fifth Highest)


Key Findings:
Top Performers: Juicy Couture, Jimmy Choo, Elizabeth Taylor, Coach, and Givenchy are the top brands in terms of total sales, indicating strong market presence and popularity.

Premium Brands: Creed, Giardini Di Toscana, and Roja lead in average price, indicating a premium market positioning.
Insights:

Sales vs. Pricing: While brands like Juicy Couture and Jimmy Choo achieve high total sales, premium brands such as Creed and Roja command higher average prices, reflecting their luxury status.

Market Dynamics: The strong total sales of some brands suggest high demand, while high average prices of others highlight their positioning in the premium segment.

Recommendations:
Leverage Popular Brands: Continue to focus on high-performing brands like Juicy Couture and Jimmy Choo for marketing and sales strategies.
Explore Premium Positioning: Investigate how premium brands like Creed maintain high average prices and consider applying similar strategies to boost overall brand positioning.


