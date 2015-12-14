require_relative "Strategy"

class StrQuestion < Strategy
    def check(input)
        if(input.include? "?")
            return true
        end
    end
    
    def use(input)
        puts(" Interesting, tell me what you think first.")
        return false
    end
end





