require "deck"

describe "deck" do 
    deck = Deck.new



    describe "initialize" do 

        it "should set deck equal to #build_deck" do 
          expect(deck.instance_variable_get(:@deck).length).to eq(52)
        end


    end

    describe "build_deck" do 
      it "should return full deck wof 52 cards" do 
        expect(deck.build_deck.length).to eq(52)
      end

      it "should return all Card instances" do
        expect(deck.build_deck.all?{|card| card.is_a?(Card)}).to eq true
      end

      it "should have all unique cards" do
        built_deck = deck.build_deck 
        expect(built_deck).to eq(built_deck.uniq)
      end
      
    end

    describe "shuffle_deck" do 
      it "should shuffle the deck" do
        expect(deck.shuffle_deck).not_to eq(deck)
      end
    end
end