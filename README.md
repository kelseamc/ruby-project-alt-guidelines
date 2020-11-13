## What to Watch?
========================

Our What to Watch app helps it's user decide what latest movies to watched based on their genre preferences. 

---

## How to Use

Users can login/make an account that would save their genre setting as well as watched history. User can find a new movie to watch via the Moviedb API. 

1. Open Terminal 
2. Run `bundle install`
3. Run `ruby bin/run.rb`
4. Enjoy.

---

## Project Function Overview

**Main Menu**

- Suggest a Movie - Opens the Suggestion Menu. 
- Genre Settings - Open up the Genre setting menu.
- My History - Shows user history, also gives option to delete history 
- End - Ends the program

**Suggestion Menu**

- From My Favorites - Suggests a movie based on the users saved genre preferences.
- Pick a Genre - Suggests a movie based on a single selected genre. 
- Main Menu - Bring the user back to the main menu. 

**Genre Settings** 

- View My Genres - Lists the user's saved genre settings. 
- Reset My Genres - Resets the user's genres and lets the user set new genre preferences. 
- Main Menu - Bring the user back to the main menu. 


## Application Specs:

**Text Editor**  
- `VSCode`

**Gems**
`gem activerecord` '~> 5.2'
`gem sinatra-activerecord`
`gem sqlite3` '~> 1.3.6'
`gem pry`
`gem require_all`
`gem faker`
`gem rake`
`gem rest-client`
`gem tty-prompt` '~> 0.22.0'
`gem artii` '~> 2.1' '>= 2.1.2'
`gem pastel`