require_relative "Strategy"

class StrOneWord < Strategy
    def check(input)
        return !(input.strip.include? " ")
    end
    
    def use(input)
        puts(" I have to go now.")
        return true
    end
end





