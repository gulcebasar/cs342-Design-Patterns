require_relative "proxyInterface"

class WeatherDataApi < ProxyInterface
    def initialize(obj)
        @cityCountryCode = obj.getResult
    end
    
    def connection
        uri = URI("http://api.openweathermap.org/data/2.5/weather?q=" + @cityCountryCode + "&units=metric&APPID=beb26486d75790e57b27021736f98f3c")
        begin
            proxy = Net::HTTP.get(uri)
            return JSON.parse(proxy)
        rescue
            return fallback
        end
    end

    def getResult
        obj = connection
        weatherData = [ (obj["weather"][0]["main"]), (obj["main"]["temp"].to_s), (obj["main"]["pressure"].to_s),
                        (obj["main"]["humidity"].to_s), (obj["main"]["temp_min"].to_s), (obj["main"]["temp_max"].to_s)]
        return weatherData
    end
    
    def fallback
        puts "**Failed to connect to weather data api. Printing Not-Found instead"
        return {"weather"=>[{"main"=>"Not-Found"}], "main"=>{"temp"=>"Not-Found", "pressure"=>"Not-Found", "humidity"=>"Not-Found", "temp_min"=>"Not-Found", "temp_max"=>"Not-Found"}}
    end
end
