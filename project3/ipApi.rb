require_relative "proxyInterface"

class IpApi < ProxyInterface
    def connection
        uri = URI("https://api.ipify.org?format=json")
        begin
            proxy = Net::HTTP.get(uri)
            return JSON.parse(proxy)
        rescue
            return fallback
        end
    end
    
    def getResult
        obj = connection
        return obj["ip"].to_s
    end
    
    def fallback
        puts "**Failed to connect to ip api, using 149.125.23.17 instead"
        return {"ip"=>"149.125.23.17"}
    end
end




