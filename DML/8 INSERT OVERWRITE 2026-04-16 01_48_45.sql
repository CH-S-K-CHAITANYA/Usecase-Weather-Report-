INSERT OVERWRITE weather_db.weather_data
SELECT * FROM weather_db.weather_data WHERE rain > 0;














