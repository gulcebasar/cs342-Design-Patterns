require_relative "ipApi"
require_relative "cityCountryCodeApi"
require_relative "weatherDataApi"

class Print
    def initialize
        @obj = WeatherDataApi.new( CityCountryCodeApi.new( IpApi.new ) )
    end
    
    def print
        data = @obj.getResult
        puts "-WEATHER= " + data[0]
        puts "-TEMPERATURE= " + data[1] + "°C"
        puts "-PRESSURE= " + data[2] + " hpa"
        puts "-HUMIDITY= " + data[3] + "%"
        puts "-MIN TEMPERATURE= " + data[4] + "°C"
        puts "-MAX TEMPERATURE= " + data[5] + "°C"
    end
end
        
p = Print.new
p.print