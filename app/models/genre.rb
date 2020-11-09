class Genre < ActiveRecord::Base
    has_many :movies
    has_many :genre_preferences
end