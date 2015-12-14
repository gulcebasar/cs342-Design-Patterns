require_relative "Strategy"

class StrMatch < Strategy
    def initialize(nChatlog)
        @chatlog = nChatlog
    end
    
    def check(input)
        @chatlog.each do |chtl|
            if(input.include? chtl.getKeyword)
                return true
            end
        end
        return false
    end
    
    def use(input)
        response = nil
        @chatlog.each do |chtl|
            if(input.include? chtl.getKeyword)
                response = chtl.getResponse
                puts(response)
                return false
            end
        end
    end
end





