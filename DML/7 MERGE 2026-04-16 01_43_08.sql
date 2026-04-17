MERGE INTO weather_data t
USING weather_stage s
ON t.district = s.district 
AND t.weather_date = s.weather_date

WHEN MATCHED THEN UPDATE SET
    t.rain = s.rain

WHEN NOT MATCHED THEN INSERT (
    district,
    mandal,
    weather_date,
    rain,
    min_temp,
    max_temp,
    min_humidity,
    max_humidity,
    min_wind_speed,
    max_wind_speed,
    avg_temp,
    rain_category
)
VALUES (
    s.district,
    s.region,   -- 👈 mapping fix here
    s.weather_date,
    s.rain,
    s.min_temp,
    s.max_temp,
    s.min_humidity,
    s.max_humidity,
    s.min_wind_speed,
    s.max_wind_speed,
    s.avg_temp,
    'Moderate'
);