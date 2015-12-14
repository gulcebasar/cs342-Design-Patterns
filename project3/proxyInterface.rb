require "net/http"
require 'json'

class ProxyInterface
    def connection
       raise "abstact method"
    end
    
    def getResult
        raise "abstact method"
    end
    
    def fallback
        raise "abstact method"
    end
end