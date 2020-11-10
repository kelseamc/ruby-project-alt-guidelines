class Movie < ActiveRecord::Base
    has_many :movie_swatched
    belongs_to :genre
end