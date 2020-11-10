
require "tty-prompt"
require "pry"
require 'rest-client'  
require 'json' 

class CLI

    @@prompt = TTY::Prompt.new
    @@artii = Artii::Base.new :font => 'slant'
    @@user = nil

    def welcome
        system('clear')
        puts @@artii.asciify("Testing")
        puts @@artii.asciify("One two three")
        sleep(2)
        self.class.main_menu
    end

    # def run 
    #     self.class.main_menu
    # end 

    def self.tty_prompt
        TTY::Prompt.new
    end 

    def self.main_menu 
        system('clear')
        puts "testing"
        sleep(1)
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
        if @user 
            #system('clear')
            self.testend
            #self.next_menu 
        else
            puts "Invalid username or password."
            sleep(2)
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
        self.testend
        # self.next_menu
    end

    def self.testend
        puts "\n End of Test"
        p User.all
        puts "End of Test"
    end 

end 