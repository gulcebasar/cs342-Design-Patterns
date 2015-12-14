class Chatlog
    def initialize(nKeyword)
        @keyword = nKeyword
        @response = []
    end
    
    def setKeyword(nKeyword)
        @keyword = nKeyword
    end
    
    def addResponse(nResponse)
        @response[@response.length] = nResponse
    end
    
    def getKeyword()
        return @keyword
    end
    
    def getResponse()
        i = rand( 0..(@response.length-1) )
        return @response[i]
    end
end





