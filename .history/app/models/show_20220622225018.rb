class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        popular = self.where("rating = ?",self.highest_rating).first
        popular
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    Show.least_popular_show
end