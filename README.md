# MQTT-Wunderground

Simple MQTT publisher of weather data using the WeatherUnderground API.
Publishes the current temperature, relative humidity, precipitation, pressure, windspeed, winddirection as well as sunrise and sunset times from a given Personal Weather Station.

## How to use
MQTT-WeatherUnderground has to know the host/IP of the MQTT broker to connect to. For this purpose MQTT-WeatherUnderground reads the `MQTT_PORT` environment variable.
`MQTT_PORT` should be in the Docker links format `tcp://<host>:<port>`, for example `MQTT_PORT = tcp://192.168.1.2:1883`.

MQTT-Wunderground also needs your [WeatherUnderground API key](wunderground.com/weather/api) in the environment variable `CONFIG_WU_API_KEY` so it can request data from Weather Underground.

And finally MQTT-Wunderground reads its config from the MQTT topic passed in the `CONFIG_TOPIC` environment variable. For example: `CONFIG_TOPIC=config/clients/wunderground`
- deviceid: The name to use for this instance of MQTT-Wunderground. For example `weather-home`
- publish_topic: The parent topic that all measurements will be published to
- updaterate: Time in seconds between updates
- country
- city
