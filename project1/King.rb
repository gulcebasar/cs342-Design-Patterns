require_relative 'Character'

class King < Character
    def initialize(wChoice)
        skills = [ 8, 6, 3, 3]
        super(skills[ wChoice-1 ], "King", 2, wChoice)
    end
end





