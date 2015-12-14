require_relative 'Weapon'

class BowArrow < Weapon
    def initialize()
        super( 3, "bow") #Bow and arrows strength is 3
    end
end
