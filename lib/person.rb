# # your code goes here


class Person 
    attr_reader :name
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene

    
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene =hygiene
    end


    def bank_account=(value) 
        @bank_account=value
    end 


    def happiness=(value)
        if value >10
            @happiness = 10
        elsif value<0
            @happiness = 0 
        else @happiness = value 
        end     
    end 


    def hygiene=(value)
        if value >10
            @hygiene = 10
        elsif value <0
            @hygiene = 0
        else @hygiene = value
        end
    end

    def clean? 
        # this syntax makes no sense
        self.hygiene>7
    end

    def happy?
        self.happiness>7
    end

    def get_paid(amount)
         self.bank_account= bank_account+amount
           "all about the benjamins"
    end


    # take_bath: increments the person's hygiene points by four and 
    # returns the string "♪ Rub-a-dub just relaxing in the tub ♫".

    def take_bath
        self.hygiene = hygiene+4 #how do it know that hygiene can't exceed 10?
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # Person#work_out: increments the person's happiness by two points, 
    # decreases their hygiene by three points, and 
    # returns the Queen lyrics, "♪ another one bites the dust ♫".

    def work_out
        self.happiness = happiness+2
        self.hygiene = hygiene-3
        "♪ another one bites the dust ♫"
    end

    # Person#call_friend(friend): accepts another instance of the Person class, or "friend". 
    # The method should increment the person and the friend's happiness points by three. 
    # It should also return a string. 
    # For example, if Stella calls her friend Felix, the method increment both Stella and Felix's happiness points 
    # and then return "Hi Felix! It's Stella. How are you?".

    def call_friend(friend)
        self.happiness = happiness+3
        friend.happiness  = friend.happiness+3 #b/c friend is its own instance, you have to call friend.happiness to call out 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # Person#start_conversation(friend, topic): 
    # accept two arguments, the friend to start a conversation with and the topic of conversation.

    # If the topic is politics, both people get sadder (their happiness decreases by 2) 
    #     and the method returns "blah blah partisan blah lobbyist".
    # If the topic is weather, both people get a little happier (their happiness increases by 1) 
    #     and the method returns "blah blah sun blah rain".
    # If the topic is not politics or weather, their happiness points don't change 
    #     and the method returns "blah blah blah blah blah".
    
    def start_conversation(friend, topic)
        if topic=="politics" 
            self.happiness -=2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic=="weather" 
            self.happiness +=1
            friend.happiness +=1
            "blah blah sun blah rain"
        else topic != "politics"||"weather" 
            "blah blah blah blah blah"
        end 
    end 


end