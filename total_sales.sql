SELECT 
  brand,
  FORMAT('%.2f', SUM(price * sold)) AS total_sales
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_cleaned`
GROUP BY brand
ORDER BY CAST(total_sales AS FLOAT64) DESC