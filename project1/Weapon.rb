class Weapon
    attr_reader :strength, :name
    def initialize(nStrength, nName)
        @strength = nStrength
        @name = nName
    end
    
    def getStrength()
        return @strength
    end
    
    def getName()
        return @name
    end
end
