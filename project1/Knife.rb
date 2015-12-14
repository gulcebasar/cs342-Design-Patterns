require_relative 'Weapon'

class Knife < Weapon
    def initialize()
        super( 1, "knife") #Knifes strength is 1
    end
end
