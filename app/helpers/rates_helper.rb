module RatesHelper
  attr_accessor :ratings

    def average_rating ratings
      (ratings.pluck(:rating).reduce(0){|sum, e| sum + e} / ratings.size).round(2)
    end

    def percent_star ratings
      ( 100 - average_rating(ratings) * 20).to_s + '%'
    end
end