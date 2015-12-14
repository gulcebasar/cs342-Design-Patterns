require_relative "Strategy"

class StrNoMatch < Strategy
    def initialize(nChatlog)
        @chatlog = nChatlog
    end
    
    def check(input)
        check = false
        @chatlog.each do |chtl|
            if(input.include? chtl.getKeyword)
                check = true
            end
        end
        return !check
    end
    
    def use(input)
        response = nil
        @chatlog.each do |chtl|
            if(chtl.getKeyword.include? "change subject")
                puts(chtl.getResponse)
                return false
            end
        end
    end
end





