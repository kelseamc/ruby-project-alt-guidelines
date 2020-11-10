
require "tty-prompt"
require "pry"
require 'rest-client'  
require 'json' 

class CLI

    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'slant'
    @@user = nil

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

    def self.tty_prompt
        TTY::Prompt.new
    end 

    def self.login_menu 
        system('clear')
        #puts "testing"
        #sleep(1)
        puts "Welcome to (our not yet finshed app)" 
        splash = self.tty_prompt.select("Please Log In or Sign Up!") do |prompt| 
            prompt.choice "Log In"
            prompt.choice "Sign Up"
        end
        case splash 
        when "Log In"
            self.login 
        when "Sign Up"
            self.signup 
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
            self.main_menu  
        end
    
    end

    def self.signup 
        prompt = self.tty_prompt
        username = prompt.ask("Username:")
        password = prompt.mask("Password:")
        @user = User.create(username: username, password: password)
        #system('clear')
        self.main_menu
        # self.next_menu
    end


    #Main Menu --------

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
            self.moviesuggestor
            #self.testend
        when "Genre Settings"
            #self.genre_menu
            self.favorite_genres
        when "My History"
            #self.history
            self.testend 
        when "End"
            self.testend 
        end 

    end 

    def self.moviesuggestor #need to compare suggested movies to already watched
        puts "test1"
        @usermovies =[]
        @user_pref = GenrePreference.where(user_id: @user.id)
        system('clear')
        @user_pref.each do |preference|
            Movie.where(genre_id: preference.genre_id).each do |movie|
                system('clear')
                @usermovies << movie.title
            end 
        end 
        p @usermovies.sample
    end 

    def self.favorite_genres
        @user_genres = []
        @user_pref = GenrePreference.where(user_id: @user.id)
        system('clear')
        @user_pref.map do |preference|
            Genre.where(id: preference.genre_id).each do |genre|
                system('clear')
                @user_genres << genre.name
            end
        end
        @user_genres.each {|genre| puts genre}
    end

    def self.genre_select_test # not done yet
        prompt = self.tty_prompt 
        genre_list = %w(horror comedy action)
        result = prompt.multi_select("Select Genre", genre_list)
        result
    end 

    def self.testend
        puts "\n End of Test"
        #p User.all
        puts "End of Test"
    end 

 #binding.pry
end 