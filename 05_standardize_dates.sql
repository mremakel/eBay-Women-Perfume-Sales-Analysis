CREATE OR REPLACE TABLE `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_standardized` AS
SELECT 
  brand,
  title,
  type,
  price,
  pricewithcurrency,
  available,
  sold,
  TIMESTAMP_ADD(
    PARSE_TIMESTAMP('%b %d, %Y %H:%M:%S', REGEXP_REPLACE(lastupdated, ' [A-Z]{3}$', '')),
    INTERVAL 8 HOUR
  ) AS lastupdated, -- Adjusting for PST (UTC-8)
  item_location
FROM `heroic-muse-430717-u2.Ebay_Womens_Perfume.perfume_listings_final`;