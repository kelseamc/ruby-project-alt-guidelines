
require "tty-prompt"
require "pry"
require 'rest-client'  
require 'json' 
require 'pastel'

class CLI

    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'slant'
    @@user = nil
    @@pastel = Pastel.new

    def self.tty_prompt
        TTY::Prompt.new
    end 

    #Welcome & user login --------
    def welcome
        system('clear')
        sleep(1)
        #Logo.go
        self.class.login_menu
    end

    def self.login_menu 
        system('clear')
        puts @@pastel.bright_magenta(@@artii.asciify("Welcome to"))
        puts @@pastel.bright_magenta(@@artii.asciify("What to watch"))
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
        @user = User.find_by(username: username, password: password)
        system('clear')
        if @user 
            system('clear')
            self.main_menu
        else
            puts "Invalid username or password."
            sleep(1)
            system('clear')
            self.login  
        end
    
    end

    def self.signup 
        prompt = self.tty_prompt
        username = prompt.ask("Username:")
        password = prompt.mask("Password:")
        @user = User.create(username: username, password: password)
        system('clear')
        self.set_genres
    end


    #Main Menu --------@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    def self.main_menu 
        system('clear')
        prompt = self.tty_prompt
        puts @@pastel.bright_magenta(@@artii.asciify("What to watch"))
        splash = self.tty_prompt.select("What do want to do?") do |prompt| 
            prompt.choice "Suggest a Movie"
            prompt.choice "Genre Settings"
            prompt.choice "My History"
            prompt.choice "End"
        end 
        case splash 
        when "Suggest a Movie"
            self.suggestion_menu
        when "Genre Settings"
            self.genre_menu
        when "My History"
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

    def self.moviesuggestor                                        #suggests movie from favorites
        @usermovies =[]
        self.user_pref.each do |preference|
            Movie.where(genre_api_id: preference.genre_api_id).each do |movie|
                system('clear')
                @usermovies << movie.title
            end 
        end 
        if @user_history == nil
                @suggested = @usermovies.sample        
        else 
        self.check_suggestion
        end
        self.sugested_movie_menu
    end 

    def self.pick_genre                                            #suggests movie from picked genre
        self.create_user_watched
        system('clear')
        @usermovies = []
        prompt = self.tty_prompt
        genre_pick = prompt.ask("What genre would you like?")
            Genre.where(name: genre_pick).each do |genre|
                system('clear')
                Movie.where(genre_api_id: genre.genre_api_id).each do |movie|
                  system('clear')
                    @usermovies << movie.title  
                end
            end
        self.check_suggestion
        self.sugested_movie_menu
    end 

    def self.check_suggestion                                     #checks suggestion against user history
        @user_history.each do |movie|
            @usermovies.delete(movie)
        end
        @suggested = @usermovies.sample
    end 
  

    def self.movie_info
        @suggest = Movie.where(title: @suggested)[0]
        system('clear')
        if  @usermovies.count == 0
            puts "Sorry you watched all the current Movies in the Preferences"
        else 
        puts @@pastel.green("_______________________________________________________________")
        puts @@pastel.bright_blue("Title: #{@suggest.title}")                        
        puts @@pastel.bright_blue("Release Date: #{@suggest.release_date}")
        puts @@pastel.bright_blue("Plot: #{@suggest.overview}")                     
        puts @@pastel.green("_______________________________________________________________")
        end 
    end

    def self.sugested_movie_menu
        self.movie_info
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
            system('clear')
            self.main_menu
        when "I've Watched This"
            MoviesWatched.create(user_id: @user.id, movie_id: @suggest.id)
            self.create_user_watched
            system('clear')
            self.suggestion_menu
        when "New Suggestion"
            self.suggestion_menu
        when "Main Menu"
            self.main_menu
        end
    end
   

    # Genre Option -----------@@@@@@@@@@@@@@@@@@
    
    def self.user_pref                                          #Helper method to find user's genre preferences
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
   

    def self.favorite_genres                           #lists out favorite genre preferences for "My Favorites"
        @user_genres = []
        self.user_pref.each do |preference|
            Genre.where(genre_api_id: preference.genre_api_id).each do |genre|
                system('clear')
                @user_genres << genre.name
            end    
        end
        puts "Your favorite genres are:"
        @user_genres.each_with_index {|genre, index| puts "#{index +1}. #{genre}"}
        self.genre_menu
    end

    def self.set_genres                                     #Has user select genres and creates user genre preferences
        prompt = self.tty_prompt 
        self.user_pref.delete_all
        system('clear')
        genre_list = Genre.all.map {|genre| genre.name}
        system('clear')
        result = prompt.multi_select("Select Genre", genre_list) 
        result.each do |genre_name|
            Genre.where(name: genre_name).each do |genre|
                system('clear')
                GenrePreference.create(user_id: @user.id, genre_api_id: genre.genre_api_id)
                system('clear')
            end
        end
        self.genre_menu
    end 

    #History Option --------------------------------

    def self.user_watched                                       ## Lits out the array of movies watched
        self.create_user_watched
        system('clear')
        puts "List of movies you watched: "
        @user_history.each_with_index {|title, index| puts "#{index + 1}. #{title}"}
        prompt = self.tty_prompt
        splash = self.tty_prompt.select("Pick One") do |prompt| 
            prompt.choice "Back"
            prompt.choice "Reset my History"
        end 
        case splash 
        when "Back"
            system('clear')
            self.main_menu
        when "Reset my History"
            self.user_history.delete_all
            self.create_user_watched
            system('clear')
            self.main_menu
        end 
    end

    def self.create_user_watched                                #generates an array of movies watched
        @user_history = []
        @user_watch = MoviesWatched.where(user_id: @user.id)
        system('clear')
        @user_watch.each do |watched_movie|
            Movie.where(id: watched_movie.movie_id).each do |movie|
                system('clear')
                @user_history << movie.title
            end
        end
        @user_history.uniq!
    end 

    def self.user_history
        @user_hist = MoviesWatched.where(user_id: @user.id)
    end

    #Testing Methods and etc

    def self.testend
        puts "I hope you had fun."
        puts @@pastel.red("Goodbye.")
    end 

 #binding.pry
end  ##end of class


