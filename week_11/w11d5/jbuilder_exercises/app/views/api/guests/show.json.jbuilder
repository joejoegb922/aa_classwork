json.partial! 'guest', guest: @guest


json.gifts do 
    @guest.gifts.each do |gift|
        json.set! gift.id do 
            json.extract! gift, :title, :description
        end
    end
end
