require_relative 'Weapon'
require_relative 'Axe'
require_relative 'Sword'
require_relative 'Knife'
require_relative 'BowArrow'
require_relative 'Character'
require_relative 'King'
require_relative 'Queen'
require_relative 'Troll'
require_relative 'Knight'

def startGame(character1, character2)
    c1 = character1.getLuck()
    c2 = c1
    
    until(c2 != c1)
        c2 = character2.getLuck()
    end
    
    if (c1 > c2)
        print "\nPlayer gets the first attack!\n"
        return true
    end
    
    print "Opponent gets the first attack!\n"
    return false
end

def play(ch1, ch2)
    attack = ch1.Attack
    defend = ch2.Defend
    print ch1.getName + " attacks #{attack} with " + ch1.getWeaponName + ", " + ch2.getName + " defends #{defend}"
    if attack > defend
        ch2.decreaseLife( attack - defend )
    end
end

c1Score = 0

print "*Pick player:\n"
print " Characters:  1)Troll   2)Queen   3)Knight   4)King    "
chChoice1 = gets.chomp()

print " Weapons:   1)Knife   2)Axe   3)Bow   4)Sword    "
weChoice1 = gets.chomp()

if chChoice1 == '1'
    c1 = Troll.new(weChoice1.to_i)
elsif chChoice1 == '2'
    c1 = Queen.new(weChoice1.to_i) 
elsif chChoice1 == '3'
    c1 = Knight.new(weChoice1.to_i)
elsif chChoice1 == '4'
    c1 = King.new(weChoice1.to_i)
else
    print "Wrong enterence start over!\n"
end

print "*Pick opponent:\n"
print " Characters:  "

if chChoice1 != '1'
    print "1)Troll   "
end
if chChoice1 != '2'
    print "2)Queen   "
end
if chChoice1 != '3'
    print "3)Knight   "
end
if chChoice1 != '4'
    print "4)King    "
end

chChoice2 = gets.chomp()
weChoice2 = rand(1..4)

if chChoice2 == '1'
    c2 = Troll.new(weChoice2)
elsif chChoice2 == '2'
    c2 = Queen.new(weChoice2)
elsif chChoice2 == '3'
    c2 = Knight.new(weChoice2)
elsif chChoice2 == '4'
    c2 = King.new(weChoice2)
else
    print "Wrong enterence start over!\n"
end

if startGame(c1, c2)
    while c1.getLife>0 && c2.getLife>0
        play(c1,c2)
        print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c2.getName + ": #{c2.getLife}\n"
        if( c2.getLife >0 )
            play(c2,c1)
            print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c2.getName + ": #{c2.getLife}\n"
        end
    end
else
    while c1.getLife>0 && c2.getLife>0
        play(c2,c1)
        print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c2.getName + ": #{c2.getLife}\n"
        if( c1.getLife >0 )
            play(c1,c2)
            print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c2.getName + ": #{c2.getLife}\n"
        end
    end
end

if(c1.getLife > 0)
    c1Score = c1Score+1
    print "Player Wins First Round!!\n"
else
    print "Opponent Wins First Round!!\n"
end

print "*Pick weapon for player:\n"
print " Weapons:   1)Knife   2)Axe   3)Bow   4)Sword    "
weChoice1 = gets.chomp()

if chChoice1 == '1'
    c1 = Troll.new(weChoice1.to_i)
elsif chChoice1 == '2'
    c1 = Queen.new(weChoice1.to_i)
elsif chChoice1 == '3'
    c1 = Knight.new(weChoice1.to_i)
elsif chChoice1 == '4'
    c1 = King.new(weChoice1.to_i)
else
    print "Wrong enterence start over!\n"
end

print "*Pick opponent:\n"
if chChoice1 != '1' && chChoice2 != '1'
    print "1)Troll   "
end
if chChoice1 != '2' && chChoice2 != '2'
    print "2)Queen   "
end
if chChoice1 != '3' && chChoice2 != '3'
    print "3)Knight   "
    end
if chChoice1 != '4' && chChoice2 != '4'
    print "4)King    "
end
chChoice3 = gets.chomp()
weChoice3 = rand(1..4)

if chChoice3 == '1'
    c3 = Troll.new(weChoice3)
elsif chChoice3 == '2'
    c3 = Queen.new(weChoice3)
elsif chChoice3 == '3'
    c3 = Knight.new(weChoice3)
elsif chChoice3 == '4'
    c3 = King.new(weChoice3)
else
    print "Wrong enterence start over!\n"
end

if startGame(c1, c3)
    while c1.getLife>0 && c3.getLife>0
        play(c1,c3)
        print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c3.getName + ": #{c3.getLife}\n"
        if( c3.getLife >0 )
            play(c3,c1)
            print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c3.getName + ": #{c3.getLife}\n"
        end
    end
else
    while c1.getLife>0 && c3.getLife>0
        play(c3,c1)
        print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c3.getName + ": #{c3.getLife}\n"
        if( c1.getLife >0 )
            play(c1,c3)
            print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c3.getName + ": #{c3.getLife}\n"
        end
    end
end

if(c1.getLife > 0)
    c1Score = c1Score+1
    print "Player Wins Second Round!!\n"
else
    print "Opponent Wins Second Round!!\n"
end

if c1Score == 0
    print "!!PLAYER LOSES!!\n"
elsif c1Score == 2
    print "!!PLAYER WINS!!\n"
else

    print "*Pick weapon for player:\n"
    print " Weapons:   1)Knife   2)Axe   3)Bow   4)Sword    "
    weChoice1 = gets.chomp()

    if chChoice1 == '1'
        c1 = Troll.new(weChoice1.to_i)
    elsif chChoice1 == '2'
        c1 = Queen.new(weChoice1.to_i)
    elsif chChoice1 == '3'
        c1 = Knight.new(weChoice1.to_i)
    elsif chChoice1 == '4'
        c1 = King.new(weChoice1.to_i)
    else
        print "Wrong enterence start over!\n"
    end

    print "*Pick opponent:\n"
    if chChoice1 != '1' && chChoice2 != '1' && chChoice3 != '1'
        print "1)Troll   "
    end
    if chChoice1 != '2' && chChoice2 != '2' && chChoice3 != '2'
        print "2)Queen   "
    end
    if chChoice1 != '3' && chChoice2 != '3' && chChoice3 != '3'
        print "3)Knight   "
    end
    if chChoice1 != '4' && chChoice2 != '4' && chChoice3 != '4'
        print "4)King    "
    end
    chChoice4 = gets.chomp()
    weChoice4 = rand(1..4)

    if chChoice4 == '1'
        c4 = Troll.new(weChoice4)
    elsif chChoice4 == '2'
        c4 = Queen.new(weChoice4)
    elsif chChoice4 == '3'
        c4 = Knight.new(weChoice4)
    elsif chChoice4 == '4'
        c4 = King.new(weChoice4)
    else
        print "Wrong enterence start over!\n"
    end

    if startGame(c1, c4)
        while c1.getLife>0 && c4.getLife>0
            play(c1,c4)
            print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c4.getName + ": #{c4.getLife}\n"
            if( c4.getLife >0 )
                play(c4,c1)
                print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c4.getName + ": #{c4.getLife}\n"
            end
        end
    else
        while c1.getLife>0 && c4.getLife>0
            play(c4,c1)
            print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c4.getName + ": #{c4.getLife}\n"
            if( c1.getLife >0 )
                play(c1,c4)
                print "  \t\t\t" + c1.getName + ": #{c1.getLife} " + c4.getName + ": #{c4.getLife}\n"
            end
        end
    end

    if(c1.getLife > 0)
        c1Score = c1Score+1
        print "Player Wins Third Round!!\n"
    else
        print "Opponent Wins Third Round!!\n"
    end

    if(c1Score > 1)
        print "!!PLAYER WINS!!\n"
    else
        print "!!PLAYER LOSES!!\n"
    end
end


