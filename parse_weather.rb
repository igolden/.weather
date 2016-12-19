require 'json'

file = "data/weather.json"
json = JSON.parse(File.read(file))

weather_code  =  json["weather"][0]["id"]
temp          =  json["main"]["temp"]



# temp file
def create_forecast(code)
  File.open("./output/forecast.txt", "w+") do |file|
    file.puts(code)
  end
end
# temp file
File.open("./output/temp.txt", "w+") do |file|
  file.puts(temp)
end

create_forecast(2) if weather_code >= 800 && weather_code < 900
create_forecast(3) if weather_code >= 800 && weather_code < 900
create_forecast(5) if weather_code >= 800 && weather_code < 900
create_forecast(6) if weather_code >= 800 && weather_code < 900
create_forecast(7) if weather_code >= 800 && weather_code < 900
create_forecast(800) if weather_code == 800
create_forecast(801) if weather_code == 801
create_forecast(802) if weather_code == 802
create_forecast(803) if weather_code == 803
create_forecast(804) if weather_code == 804
create_forecast(900) if weather_code == 900
create_forecast(903) if weather_code == 903
create_forecast(904) if weather_code == 904
create_forecast(905) if weather_code == 905
create_forecast(906) if weather_code == 906

