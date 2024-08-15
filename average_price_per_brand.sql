SELECT 
  brand,
  AVG(price) AS average_price
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_cleaned`
GROUP BY brand
ORDER BY average_price DESC