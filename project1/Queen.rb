require_relative 'Character'

class Queen < Character
    def initialize(wChoice)
        @skills = [ 10, 3, 3, 2]
        super( @skills[ wChoice-1 ], "Queen", 10, wChoice)
    end
end





