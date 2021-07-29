require "deck"

describe "deck" do 
    deck = Deck.new
    it "should define class constant available SUITS" do
        expect(SUITS.is_a?(Array)).to eq true
    end

    it "should define class constant available VALUES" do
        expect(VALUES.is_a?(Array)).to eq true
    end

    describe "initialize" do 
        it "should set deck equal to build_deck" do 

        end

        it "should call ::build_deck" do 

        end

        it 
    end
end