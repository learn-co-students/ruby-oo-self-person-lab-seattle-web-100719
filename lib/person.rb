# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8) 
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
        @happiness
    end

    def happiness=(happiness)
       @happiness = happiness
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end


def clean?
    if @hygiene > 7 
        return true
    else
        return false
    end
end

def happy?
    if @happiness > 7
        return true
    else
        return false
    end
end

def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
end

def take_bath
    self.hygiene = @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    return "♪ another one bites the dust ♫"
end

def call_friend(callee)    
    callee.happiness += 3
    self.happiness += 3
    return "Hi #{callee.name}! It's #{self.name}. How are you?"
end

def start_conversation(callee, topic)
    if topic == "politics"
        callee.happiness -= 2
        self.happiness -= 2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        callee.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end

end

# binding.pry
# 0