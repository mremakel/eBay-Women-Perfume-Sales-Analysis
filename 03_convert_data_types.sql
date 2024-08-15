CREATE OR REPLACE TABLE `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_cleaned` AS
SELECT 
  brand,
  title,
  type,
  SAFE_CAST(price AS FLOAT64) AS price,
  pricewithcurrency,
  available,
  sold,
  lastupdated,
  itemlocation
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_trimmed`