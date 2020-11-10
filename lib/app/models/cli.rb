
require "tty-prompt"
require "pry"
require 'rest-client'  
require 'json' 

class CLI

    #@@prompt = TTY::Prompt.new
    #@@artii = Artii::Base.new :font => 'slant'
    #@@user = nil

    # def welcome
    #     system('clear')
    #     puts "test" #@@artii.asciify("Testing")
    #     puts "test" #@@artii.asciify("One two three")
    #     sleep(5)
    #     #self.auth_sequence
    # end

    def run 
        self.class.main_menu
    end 

    def self.tty_prompt
        TTY::Prompt.new
    end 

    def self.main_menu 
        system('clear')
        puts "testing"
        sleep(3)
    end 

end 