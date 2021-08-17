class Artwork < ApplicationRecord
    validates :title, presence: true
    validates :artist_id, presence: true
    validates :artist_id, uniqueness: { scope: :title }
    validates :image_url, presence: true
    
    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User

    has_many :viewers,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :viewers,
        source: :viewer
        
end