SELECT
  `_c0` as id,
  carat,
  CAST(carat as int) as carat_int,
  CAST(carat as decimal) as carat_dec,
  CAST(carat as float) as carat_float,
  CAST(carat as TINYINT) as carat_tinyint,
  CAST(`table` as BIGINT) as table_bigint,
  ROUND(carat, 0) as approx_carat,
  `table`,
  cut,
  cut='Premium' as is_premium,
  price,
  ARRAY(price, carat) as arr,
  NOW() as created_at,
  DATE(NOW()) as date_created_at,
  unhex('537061726B2053514C') as some_bin,
  STRUCT(carat, cut) as weird_object
from diamonds
