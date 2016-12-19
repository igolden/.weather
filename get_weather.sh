#!/bin/sh

curl http://api.openweathermap.org/data/2.5/weather\?q\=1550+platte+st+Denver,CO\&appid\=ddd913ee3338777af3676b20eaa9467c\&units\=imperial -o ./data/weather.json
ruby parse_weather.rb
