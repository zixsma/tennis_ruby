class Counter
    attr_accessor :playerA, :playerB
    def initialize
         reset()  
    end

    def addA()
        @playerA += 1
    end

    def addB()
        @playerB += 1
    end

    def reset
        @playerA = 0
        @playerB = 0
    end
end
