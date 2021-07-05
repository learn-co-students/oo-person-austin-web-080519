class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene 
    def initialize(name)
        @name = name 
       
        @happiness = 8
        @hygiene = 8
        @bank_account = 25 
    end 
    def happiness=(int)
        @happiness = int.clamp(0, 10)
    end
    def hygiene=(int)
        @hygiene = int.clamp(0, 10)
    end
    def happy?
        @happiness > 7? true : false
    end 
    def clean?
        @hygiene > 7? true : false
    end 
    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end 
    def take_bath 
        self.hygiene += 4  
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out 
        self.hygiene -= 3 
        self.happiness += 2 
        return '♪ another one bites the dust ♫'
    end 
    def call_friend(person)
        self.happiness += 3 
        person.happiness += 3 
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end 
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2 
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1 
            person.happiness += 1 
            return 'blah blah sun blah rain' 
        else 
            return "blah blah blah blah blah"
        end 
        
    end
    


end 
