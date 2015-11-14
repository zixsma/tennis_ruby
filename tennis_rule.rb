class TennisRule
    def announce(counter)
        @score = Array["love", "15", "30", "40"]
        if deuce(counter)
            'deuce'
        elsif start_game(counter)
            'love-love'
        else
            if equal_score(counter)
                @score[counter.playerA] + '-all'
            else
                @score[counter.playerA] + '-' + @score[counter.playerB]
            end
        end
    end

    def deuce(counter)
        counter.playerA == 3 && counter.playerB == 3
    end

    def start_game(counter)
        counter.playerA == 0 && counter.playerB == 0
    end

    def equal_score(counter)
        counter.playerA == counter.playerB
    end
end
