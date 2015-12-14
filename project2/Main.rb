require_relative "Chatlog"
require_relative "User"
require_relative "Chatterbot"
require_relative "StrMatch"
require_relative "StrQuestion"
require_relative "StrOneWord"
require_relative "StrNoMatch"
Chatl = []

fileObj = File.new("chatter.txt", "r")
i = 0

fileObj.each_line do |line|
    line = line.chomp
    if(!line.empty?)
        s = line.split(":")
        c = Chatlog.new(s[0])
        s = s[1].split(";")
        s.each do |str|
            if( str != nil)
                c.addResponse(str)
            end
        end
        Chatl[i] = c
        i = i+1
    end
end

Chatl2 = Chatl.sort_by{|x| x.getKeyword.length}.reverse

strategy = [StrMatch.new(Chatl2), StrQuestion.new(), StrOneWord.new(), StrNoMatch.new(Chatl2)]

chatterbot1 = Chatterbot.new(User.new, strategy)
chatterbot1.chatter

fileObj.close