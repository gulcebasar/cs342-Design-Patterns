require_relative "proxyInterface"

class CityCountryCodeApi < ProxyInterface
    def initialize(obj)
        @ip = obj.getResult
    end
    
    def connection
        uri = URI("http://ip-api.com/json/" + @ip)
        begin
            proxy = Net::HTTP.get(uri)
            return JSON.parse(proxy)
        rescue
            return fallback
        end
    end
    
    def getResult
        obj = connection
        return obj["city"] + "," + obj["countryCode"]
    end
    
    def fallback
        puts "**Failed to connect to city country code api. Using Binghamton, US instead"
        return {"city"=>"Binghamton", "countryCode"=>"US"}
    end
end




