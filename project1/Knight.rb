require_relative 'Character'

class Knight < Character
    def initialize(wChoice)
        @skills = [ 9, 4, 4, 2]
        super( @skills[ wChoice-1 ], "Knight", 6, wChoice)
    end
end





