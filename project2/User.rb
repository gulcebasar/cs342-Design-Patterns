require 'observer'

class User
    include Observable
    
    def initialize()
        @flag = false
    end
    
    def setFlag(bool)
        @flag=bool
    end
    
    def chatter
        if File.exists?("script.txt")
            fileObj = File.new("script.txt", "r")
            
            fileObj.each_line do |line|
                puts(line)
                line = line.chomp.downcase
                changed
                notify_observers(line)
                
                if(@flag)
                    @flag=false
                    return
                end
            end
            fileObj.close
        else
            while line = gets.chomp()
                line = line.downcase
                changed
                notify_observers(line)
                
                if(@flag)
                    @flag=false
                    return
                end
            end
        end
    end
end





