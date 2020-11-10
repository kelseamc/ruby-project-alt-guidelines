
require "tty-prompt"
require "pry"
require 'rest-client'  
require 'json' 

class CLI

    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'slant'
    @@user = nil

    def self.tty_prompt
        TTY::Prompt.new
    end 

    #Welcome & user login --------
    def welcome
        system('clear')
        puts @@artii.asciify("Testing")
        puts @@artii.asciify("One two three")
        #sleep(1)
        self.class.login_menu
    end

    # def run 
    #     self.class.main_menu
    # end 

    def self.login_menu 
        system('clear')
        #puts "testing"
        #sleep(1)
        puts "Welcome to (our not yet finshed app)" 
        #splash = self.tty_prompt.select("Please Log In or Sign Up!") do |prompt| 
        splash = @@prompt.select("Please Log In or Sign Up!") do |prompt| 
            prompt.choice "Log In"
            prompt.choice "Sign Up"
            prompt.choice "Quit"
        end
        case splash 
        when "Log In"
            self.login 
        when "Sign Up"
            self.signup 
        when "Quit"
            puts "Goodbye"
        end 
    end

    def self.login 
        prompt = self.tty_prompt 
        username = prompt.ask("Username:")
        password = prompt.mask("Password:")
        #self.testend
        @user = User.find_by(username: username, password: password)
        system('clear')
        if @user 
            system('clear')
            self.main_menu
            #self.next_menu 
        else
            puts "Invalid username or password."
            sleep(1)
            #system('clear')
            self.login  
        end
    
    end

    def self.signup 
        prompt = self.tty_prompt
        username = prompt.ask("Username:")
        password = prompt.mask("Password:")
        @user = User.create(username: username, password: password)
        self.set_genres
        #system('clear')
        #self.main_menu
        # self.next_menu
    end


    #Main Menu --------@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    def self.main_menu 
        prompt = self.tty_prompt
        splash = self.tty_prompt.select("What do want to do?") do |prompt| 
            prompt.choice "Suggest a Movie"
            prompt.choice "Genre Settings"
            prompt.choice "My History"
            prompt.choice "End"
        end 
        case splash 
        when "Suggest a Movie"
            self.suggestion_menu
            #self.testend
        when "Genre Settings"
            #self.genre_menu
            self.genre_menu
        when "My History"
            #self.history
            self.user_watched
        when "End"
            self.testend 
        end 

    end 


    #Suggestion--------@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    def self.suggestion_menu
        prompt = self.tty_prompt
        splash = self.tty_prompt.select("Pick One") do |prompt| 
            prompt.choice "From My Favorites"
            prompt.choice "Pick a Genre"
            prompt.choice "Main Menu"
        end 
        case splash 
        when "From My Favorites"
            self.moviesuggestor
        when "Pick a Genre"
            self.pick_genre
        when "Main Menu"
            self.main_menu
        end 
    end 

    def self.moviesuggestor 
        self.create_user_watched
        @usermovies =[]
        @user_pref = GenrePreference.where(user_id: @user.id)
        system('clear')
        @user_pref.each do |preference|
            Movie.where(genre_id: preference.genre_id).each do |movie|
                system('clear')
                @usermovies << movie.title
            end 
        end 
        
        @user_history.each do |movie|
            @usermovies.delete(movie)
        
        end
        @suggested = @usermovies.sample
        self.sugested_movie_menu
    end 

    def self.pick_genre 
        self.create_user_watched
        @genre_movies = []
        prompt = self.tty_prompt
        genre_pick = prompt.ask("What genre would you like?")
        Genre.where(name: genre_pick).each do |genre|
            system('clear')
            Movie.where(genre_id: genre.id).each do |movie|
                system('clear')
                @genre_movies << movie.title
            end
        end
        @user_history.each do |movie|
            @genre_movies.delete(movie)
        end
        @suggested = @genre_movies.sample
        self.sugested_movie_menu
    end 

    def self.sugested_movie_menu
        sug = Movie.where(title: @suggested)[0]
        system('clear')
        p @suggested 
        prompt = self.tty_prompt
        splash = self.tty_prompt.select("Pick One") do |prompt| 
            prompt.choice "I'm happy with this"
            prompt.choice "I've Watched This"
            prompt.choice "New Suggestion"
            prompt.choice "Main Menu"
        end
        case splash 
        when "I'm happy with this"
            puts "Thank you for using Movie Selector!"
            sleep(1)
            self.main_menu
        when "I've Watched This"
            MoviesWatched.create(user_id: @user.id, movie_id: sug.id)
            system('clear')
            self.suggestion_menu
        when "New Suggestion"
            self.suggestion_menu
        when "Main Menu"
            self.main_menu
        end
    end
   

    # Genre Option -----------@@@@@@@@@@@@@@@@@@
    def self.user_pref
        @user_pref = GenrePreference.where(user_id: @user.id)
    
    end

    def self.genre_menu 
        prompt = self.tty_prompt
        splash = self.tty_prompt.select("Pick One") do |prompt| 
            prompt.choice "See my Genres"
            prompt.choice "Reset my Genres"
            prompt.choice "Main Menu"
        end 
        case splash 
        when "See my Genres"
            self.favorite_genres
        when "Reset my Genres"
            self.set_genres
        when "Main Menu"
            self.main_menu
        end 
    end 
   

    def self.favorite_genres
        @user_genres = []
        @user_pref = GenrePreference.where(user_id: @user.id)
        system('clear')
        @user_pref.each do |preference|
            Genre.where(id: preference.genre_id).each do |genre|
                system('clear')
                @user_genres << genre.name
            end
        end
        puts "Your favorite genres are:"
        @user_genres.each_with_index {|genre, index| puts "#{index +1}. #{genre}"}
        sleep(2)
        self.genre_menu
    end

    def self.set_genres # not done yet
        prompt = self.tty_prompt 
        self.user_pref.delete_all
        system('clear')
        #puts "not yet done"
        genre_list = %w(Horror Comedy Action)
        result = prompt.multi_select("Select Genre", genre_list)
        result.map do |genre_name|
            Genre.where(name: genre_name).each do |genre|
                system('clear')
                GenrePreference.create(user_id: @user.id, genre_id: genre.id)
                system('clear')
            end
        end
        self.genre_menu
    end 

    #History Option --------------------------------

    def self.user_watched ## we split this to a helper and a main function 
        self.create_user_watched
        puts "List of movies you watched: "
        @user_history.each_with_index {|title, index| puts "#{index + 1}. #{title}"}
        self.main_menu
    end

    def self.create_user_watched
        @user_history = []
        @user_watch = MoviesWatched.where(user_id: @user.id)
        system('clear')
        @user_watch.each do |watched_movie|
            Movie.where(id: watched_movie.movie_id).each do |movie|
                system('clear')
                @user_history << movie.title
                #@user_history.uniq
            end
        end
        @user_history.uniq!
    end 



    #Testing Methods and etc



    def self.testend
        puts "\n End of Test"
        #p User.all
        puts "End of Test"
    end 

 #binding.pry
end  ##end of class



