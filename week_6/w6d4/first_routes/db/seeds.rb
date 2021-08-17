# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    #users
    
    User.destroy_all
    tony = User.create(username: 'tony_tiger')
    sam = User.create(username: 'tucan_sam')
    lucky = User.create(username: 'lucky_leprechaun')
    peanut = User.create(username: 'mr_peanut')

    #artworks
    Artwork.destroy_all
    frosted_flakes = Artwork.create(title: 'frosted_flakes', image_url: '2021.png', artist_id: tony.id)
    froot_loops = Artwork.create(title: 'froot_loops', image_url: "2020.png", artist_id: sam.id)
    lucky_charms = Artwork.create(title: "lucky_charms", image_url: "2019.png", artist_id: lucky.id)
    peanuts = Artwork.create(title: "peanuts", image_url: "2018.png", artist_id: peanut.id)

#     #artworkshares
   ArtworkShare.destroy_all
   ArtworkShare.create(viewer_id: tony.id, artwork_id: peanuts.id)
   ArtworkShare.create(viewer_id: sam.id, artwork_id: lucky_charms.id)
   ArtworkShare.create(viewer_id: lucky.id, artwork_id: froot_loops.id) 
   ArtworkShare.create(viewer_id: peanut.id, artwork_id: frosted_flakes.id)

end 