require_relative "Strategy"

class Chat
    def initialize(nUser, nStrategy)
        @strategy = nStrategy
        @user = nUser
    end
    
    def chatter()
        startChat()
        @user.chatter()
        endChat()
    end
    
    def startChat
        raise "abstract method"
    end
    
    def endChat
        raise "abstract method"
    end

end
