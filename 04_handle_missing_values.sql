CREATE OR REPLACE TABLE `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_final` AS
SELECT 
  COALESCE(brand, 'Unknown') AS brand,
  COALESCE(title, 'No Title') AS title,
  COALESCE(type, 'Unknown Type') AS type,
  COALESCE(price, 0) AS price,
  pricewithcurrency,
  COALESCE(available, 0) AS available,
  COALESCE(sold, 0) AS sold,
  lastupdated,
  COALESCE(itemlocation, 'Unknown Location') AS item_location
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_cleaned`;