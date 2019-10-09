# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25.0
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness > 10
            self.happiness = 10
        elsif happiness < 0
            self.happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            self.hygiene = 10
        elsif hygiene < 0
            self.hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        if self.hygiene > 10
            self.hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        if self.happiness > 10
            self.happiness = 10
        end
        self.hygiene -= 3
        if self.hygiene < 0
            self.hygiene = 0
        end
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        if self.happiness > 10
            self.happiness = 10
        end
        friend.happiness += 3
        if friend.happiness > 10
            friend.happiness = 10
        end
        name = self.name
        fname = friend.name
        "Hi #{fname}! It's #{name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            if self.happiness < 0
                self.happiness = 0
            end
            if person.happiness < 0
                person.happiness = 0
            end
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            if self.happiness > 10
                self.happiness = 10
            end
            if person.happiness > 10
                person.happiness = 10
            end
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"   
        end
    end

end
