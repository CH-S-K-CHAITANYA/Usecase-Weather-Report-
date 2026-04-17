UPDATE weather_data 
SET rain_category =
  CASE 
    WHEN rain = 0 THEN 'No Rain'
    WHEN rain < 10 THEN 'Low'
    WHEN rain < 50 THEN 'Moderate'
    ELSE 'Heavy'
  END;