require_relative "Chat"

class Chatterbot < Chat
    def initialize(nUser, nStrategy)
        nUser.add_observer(self)
        super(nUser, nStrategy)
    end
    
    def update(inputString)
        @strategy.each do |s|
            if(s.check(inputString))
                if(s.use(inputString))
                    @user.setFlag(true)
                end
                return
            end
        end
    end
    
    def startChat()
        puts(" Hello")
    end
    
    def endChat()
        puts(" Goodbye")
    end
end





