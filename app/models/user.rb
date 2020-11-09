# require "tty-prompt"
class User < ActiveRecord::Base
    has many: movie_watched
    has many: genre_preferences
    has_many :genres through :genre_preferences
    has_many :movies through :movie_watched
    # @@prompt = TTY::Prompt.new

  
end