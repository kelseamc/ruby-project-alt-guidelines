require 'pry'
require 'rest-client'
require 'json'

Movie.destroy_all
User.destroy_all
Genre.destroy_all
Movie_watched.destroy_all
Genre_preference.destroy_all

# AI: Seed with 100 categories from the API 
# api_resp = RestClient.get("http://jservice.io/api/categories?count=100")
# api_data = JSON.parse(api_resp)
# api_data.each { |cat| Category.create( api_id: cat["id"], title: cat["title"] )}
# Category.create(api_data) NOT GONNA WORK B/C ADNTL KEY FROM API 

binding.pry

