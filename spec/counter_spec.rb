require 'spec_helper'
require_relative '../counter'
describe Counter do
    before(:each) do
        @counter = Counter.new
    end

    it "should be 0 for both player when start" do
        expect(@counter.playerA).to eql 0
        expect(@counter.playerB).to eql 0
    end

    it "should increase player A score" do
        @counter.addA()
        expect(@counter.playerA).to eql 1
    end

    it "should increase player B score" do
        @counter.addB()
        expect(@counter.playerB).to eql 1
    end

    it "should reset both player score to 0" do
        @counter.playerA = @counter.playerB = 5
        @counter.reset()
        expect(@counter.playerA).to eql 0
        expect(@counter.playerB).to eql 0
    end
end
