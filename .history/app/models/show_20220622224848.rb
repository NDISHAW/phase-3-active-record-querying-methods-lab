class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        popular = self.where("rating = ?",self.highest_rating).first
        popular
    end
end