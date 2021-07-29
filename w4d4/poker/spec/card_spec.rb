require "card"

describe "card" do
  describe "initialize" do
    # subject { Card.new("ace",:hearts) }
    card = Card.new("ace",:hearts)

    it "should accept a value and suit as argument" do 
      expect(Card.new("king", :hearts))
    end 

    it "should set @value and @suit to value and suit" do 
      expect(card.instance_variable_get(:@value)).to eq("ace")
      expect(card.instance_variable_get(:@suit)).to eq(:hearts)
    end

    it "should get @suit and @value" do 
      expect(card.suit).to eq(:hearts)
      expect(card.value).to eq("ace")
    end
  end
end