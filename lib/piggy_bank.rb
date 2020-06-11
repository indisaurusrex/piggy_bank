class PiggyBank
    attr_reader :coins
    
    def initialize
        @coins = 0
    end
    
    def add_coins(amount)
        @coins += amount
    end

    def shake
    "cling" if @coins > 0
    end   

    def break
    "Returns #{@coins} #{@coins == 1 ? "coin" : "coins"}"
    #@coins -= @coins
    #@coins = 0
    end

end