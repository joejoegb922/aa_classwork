require "deck"

describe "deck" do 
    deck = Deck.new

    it "should define class constant SUITS" do
        expect(SUITS.is_a?(Array)).to eq true
    end

    it "should define class constant VALUES" do
        expect(VALUES.is_a?(Array)).to eq true
    end

    describe "initialize" do 

        it "should set deck equal to #build_deck" do 
          expect(deck.instance_variable_get(:@deck).length).to eq(52)
        end

        # it "should call ::build_deck" do 
        #   expect(self).to receive(:build_deck)
        # end

    end

    describe "build_deck" do 
      it "should return full deck of 52 Card instances" do 
        expect(deck.build_deck.length).to eq(52)
        expect(deck.build_deck.all?{|card| card.is_a?(Card)}).to eq true
      end

      it "should return all "



      it "should have all unique cards" do
        built_deck = deck.build_deck 
        expect(built_deck).to eq(built_deck.uniq)
      end

      
      
    end
end