class User < ActiveRecord::Base
    has many: movie_watched
    has many: genre_preferences
    has_many :genres through :genre_preferences
    has_many :movies through :movie_watched

    # def self.signup
    #     username = @@prompt.ask("What is your name?")
    #     password = @@prompt.mask("What is your password?")
    #     self.create(username: username, password: password)
    # end

end