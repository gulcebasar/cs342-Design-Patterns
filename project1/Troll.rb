require_relative 'Character'

class Troll < Character
    def initialize(wChoice)
        @skills = [ 8, 5, 5, 3]
        super( @skills[ wChoice-1 ], "Troll", 0, wChoice)
    end
end





