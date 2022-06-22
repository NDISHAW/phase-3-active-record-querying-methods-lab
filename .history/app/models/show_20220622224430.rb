class Show < ActiveRecord::Base

    def self.highest_rating
        Movie.maximum(:rating)
    end
end