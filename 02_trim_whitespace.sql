CREATE OR REPLACE TABLE `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_trimmed` AS
SELECT 
  TRIM(brand) AS brand,
  TRIM(title) AS title,
  TRIM(type) AS type,
  price,
  pricewithcurrency,
  available,
  sold,
  lastupdated,
  TRIM(itemlocation) AS itemlocation
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_no_duplicates`;