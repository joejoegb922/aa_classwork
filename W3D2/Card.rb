class Card 
    attr_reader :card_value

    def initialize(value)
        @card_value = value
        @face_down = true
    end

    def hide
        @face_down = true
    end

    def reveal
        @face_down = false
    end

    def to_s(card)
        card.to_s
    end

    def ==(card)
        self.card_value == card.card_value
    end

end