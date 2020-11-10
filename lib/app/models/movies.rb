class Movie < ActiveRecord::Base
    has_many :movies_watched
    belongs_to :genre
end