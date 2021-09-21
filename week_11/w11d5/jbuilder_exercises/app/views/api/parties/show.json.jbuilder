json.extract! @party, :name, :guests

# json.guests.gifts do |gift| 
#    json.extract! gift, :title, :description 
# end

json.guest do 
    @party.guests.each do |guest|
        guest.gifts.each do |gift|

            json.set! gift.id do 
                json.extract! gift, :title, :description
            end
        end
    end
end