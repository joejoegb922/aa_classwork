require "game"

describe "game" do 
    describe "initialize" do 
        it "should create a deck class and save it to @deck" do 
            expect(game.instance_variable_get(:@deck).is_a?(Deck)).to eq true 
        end

        it "should set @pot equal to zero" do
            expect(game.instance_variable_get(:@pot)).to eq(0)
        end

        it "should accept any amount of players up to five" do 
            expect(initialize(*players))
        end
    end

    describe "deal_cards" do 
        it "should take"
    end
end 

