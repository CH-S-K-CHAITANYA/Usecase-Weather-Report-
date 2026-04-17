CREATE TABLE weather_stage (
    district STRING,
    region STRING,
    weather_date STRING,
    rain DOUBLE,
    min_temp DOUBLE,
    max_temp DOUBLE,
    min_humidity DOUBLE,
    max_humidity DOUBLE,
    min_wind_speed DOUBLE,
    max_wind_speed DOUBLE,
    avg_temp DOUBLE
)
USING DELTA;