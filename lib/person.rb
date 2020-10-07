# your code goes here
class Person
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    attr_accessor :bank_account
    attr_reader :happiness, :hygiene

    def name 
        @name
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else 
            @happiness = happiness
        end
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


    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene = @hygiene + 4
        self.hygiene = @hygiene
        puts "Rub-a-dub just relaxing in the tub"
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness = @happiness + 2
        self.happiness = @happiness
        @hygiene = @hygiene - 3
        self.hygiene = @hygiene
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.instance_variable_get(:@happiness) + 3
        return "Hi #{friend.instance_variable_get(:@name)}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            person.happiness = person.instance_variable_get(:@happiness) - 2
            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness = @happiness + 1
            person.happiness = person.instance_variable_get(:@happiness) + 1
            return "blah blah sun blah rain"

        else
            return "blah blah blah blah blah"
        end 
    end

end