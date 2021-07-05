# your code goes here

class Person
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @hygiene = hygiene

        @happiness = cap_between_10(happiness)
        @hygiene = cap_between_10(hygiene)
    end

    def bank_account
        @bank_account
    end 

    def name
        @name
    end    

    def bank_account=(bank_account)
        @bank_account = bank_account
    end 

    def happiness
        @happiness 
    end 

    def happiness=(happiness)
        @happiness = cap_between_10(happiness)
    end 

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        @hygiene = cap_between_10(hygiene)
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end 

    def cap_between_10(value)
        if value.between?(0, 10) # if number is between 0 and 10
            value # do this
        else # else if the number is not between 0 and 10
            if value < 0
                value = 0
            else
                value = 10
            end
        end
    end
end

