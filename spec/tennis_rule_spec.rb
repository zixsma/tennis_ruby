require 'spec_helper'
require_relative '../tennis_rule'
describe TennisRule do
    before(:each) do
        @counter = Counter.new
        @tennis_rule = TennisRule.new
    end

    it "should announce love-love when both player's score is 0" do
        expect(@tennis_rule.announce(@counter)).to eql 'love-love'
    end

    it "should announce 15-love when playerB's score is 0 and playerA has 1 score more than playerB" do
        setPlayerAScore(1)
        expect(@tennis_rule.announce(@counter)).to eql '15-love'
    end

    it "should announce 15-all when playerA's score is 1 and playerB's score is 1" do
        setPlayerAScore(1)
        setPlayerBScore(1)
        expect(@tennis_rule.announce(@counter)).to eql '15-all'
    end

    it "should announce 30-15 when playerB's score is 1 and playerA has 1 score more than playerB" do
        setPlayerAScore(2)
        setPlayerBScore(1)
        expect(@tennis_rule.announce(@counter)).to eql '30-15'
    end


    it "should announce 30-all when playerB's score is 2 and playerA's score is 2" do
        setPlayerAScore(2)
        setPlayerBScore(2)
        expect(@tennis_rule.announce(@counter)).to eql '30-all'
    end

    it "should announce 40-30 when playerA's score is 3 and playerB's score is 2" do
        setPlayerAScore(3)
        setPlayerBScore(2)
        expect(@tennis_rule.announce(@counter)).to eql '40-30'
    end

    it "should announce deuce when playerA's score is 3 and playerB's score is 3" do
        setPlayerAScore(3)
        setPlayerBScore(3)
        expect(@tennis_rule.announce(@counter)).to eql 'deuce'
    end

    def setPlayerAScore(score)
        score.times{ @counter.addA() }
    end

    def setPlayerBScore(score)
        score.times{ @counter.addB() }
    end
end
