class Person
    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def capTo10(value)
        if value > 10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    def happiness=(happiness)
        @happiness = capTo10(happiness)
    end

    def hygiene=(hygiene)
        @hygiene = capTo10(hygiene)
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(hygiene-3)
        self.happiness=(happiness+2)
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness=(self.happiness+3)
        friend.happiness=(friend.happiness+3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness=(self.happiness-2)
            friend.happiness=(friend.happiness-2)
            'blah blah partisan blah lobbyist' 
        when "weather"
            self.happiness=(self.happiness+1)
            friend.happiness=(friend.happiness+1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end




end
