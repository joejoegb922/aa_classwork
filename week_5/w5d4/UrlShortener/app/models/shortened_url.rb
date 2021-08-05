class ShortenedUrl < ApplicationRecord
    validates :short_url, :long_url, presence: true, uniqueness: true

    def self.random_code
        SecureRandom.urlsafe_base64
    end

    def self.assigns_shorten(user, long_url)
        until !ShortenedUrls.exists?(short_url: temp)
            temp = self.random_code
        end
        self = ShortenedUrl.new(short_url: temp, long_url: long_url, user_id: user.id)
    end
end
