
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

    def run 
        self.class.main_menu
    end 

    def self.tty_prompt
        TTY::Prompt.new
    end 

    def self.main_menu 
        system('clear')
        puts "testing"
        sleep(1)
    end 

end 