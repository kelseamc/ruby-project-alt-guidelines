require 'pry'
# require 'rest-client'
# require 'json'
# require 'faker'

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

g1 = Genre.create(name: "Action")
g2 = Genre.create(name: "Comedy")
g3 = Genre.create(name: "Drama")
g4 = Genre.create(name: "Si-Fi")
g5 = Genre.create(name: "Horror")
g6 = Genre.create(name: "Thriller")
g6 = Genre.create(name: "Romance")

u1 = User.create(name: "Mike", password: "1234")
u2 = User.create(name: "Tom", password: "1234")
u3 = User.create(name: "Jess", password: "1234")

m1 = Movie.create(title:"Taken", genre_id: g1.id)
m2 = Movie.create(title:"The Hangover", genre_id: g2.id)
m3 = Movie.create(title:"Just Mercy", genre_id: g3.id)
m4 = Movie.create(title:"Star Trek", genre_id: g4.id)
m5 = Movie.create(title:"Insidious", genre_id: g5.id)
m6 = Movie.create(title:"The Notebook", genre_id: g6.id)







binding.pry

