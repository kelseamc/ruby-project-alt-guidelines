class Movie < ActiveRecord::Base
    has_many :movie_watched
    belongs_to :genre
end