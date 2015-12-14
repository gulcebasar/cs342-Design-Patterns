require_relative 'Weapon'
require_relative 'Axe'
require_relative 'Sword'
require_relative 'Knife'
require_relative 'BowArrow'

class Character
    attr_reader :life, :skill, :name, :defence, :weapon
    def initialize(nSkill, nName, nDefence, wChoice)
        @life = 100
        @skill = nSkill
        @name = nName
        @defence = nDefence
        if(wChoice == 1)
            @weapon = Knife.new()
        elsif(wChoice == 2)
            @weapon = Axe.new()
        elsif(wChoice == 3)
            @weapon = BowArrow.new()
        elsif(wChoice == 4)
            @weapon = Sword.new()
        else
            print "Wrong enterence start over!\n"
        end
    end

    def getLife()
        return @life
    end
    
    def getName()
        return @name
    end
    
    def decreaseLife(num)
        @life = @life - num
        if @life < 0
            @life = 0
        end
    end
    
    def getWeaponName()
        return @weapon.getName
    end
    
    def getLuck()
        luck = rand(1..10)
        return luck
    end

    def Defend()
        luck = getLuck()
        if( luck > 4 ) #character can defend itself if his luck is more than 4
            rdef = @defence
            if( luck < 8 ) #if luck is 5, 6 or 7 uses half defence
                rdef = rdef / 2
            end
            #if luck is 8, 9, 10 uses full defence
            return rdef
        end
        #if luck < 4 cant defend himself
        return 0
    end

    def Attack()
        # attack is weapons strength * characters skill to use it
        attack = @weapon.getStrength() * @skill
        
        luck = getLuck()
        if(luck < 4)
            # if the attackers luck is 1,2,3, attack hit decreases by 5
            attack = attack-5
        elsif(luck < 7)
            # if the attackers luck is 4,5,6, attack hit decreases by 2
            attack = attack-2
        end
        return attack
    end

end
