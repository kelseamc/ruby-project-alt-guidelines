require 'pry'
 
# require 'rest-client'
# require 'json'

Genre.destroy_all
User.destroy_all
Movie.destroy_all
MoviesWatched.destroy_all
GenrePreference.destroy_all

# AI: Seed with 100 categories from the API 
api_resp_genre = RestClient.get("https://api.themoviedb.org/3/genre/movie/list?api_key=443141b294d51963b19fb788c64fca7d&language=en-US")
api_data_genre = JSON.parse(api_resp_genre)

api_resp_movie = RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=443141b294d51963b19fb788c64fca7d&language=en-US&page=1")
api_data_movie = JSON.parse(api_resp_movie)
# api_data.each { |genre| Genre.create( api_id: genre["id"], name: genre["name"] )}
# Category.create(api_data) NOT GONNA WORK B/C ADNTL KEY FROM API 
api_data_genre["genres"].each { |genre| Genre.create(genre_api_id: genre["id"], name: genre["name"] )}

#api_data_movie["results"].each {|movie| Movie.create(title: movie["title"], genre_api_id: movie["genre_ids"][0], overview: movie["overview"], release_date: movie["release_date"])}
api_data_movie["results"].each {|movie| movie["genre_ids"].each {|genre| Movie.create(title: movie["title"], genre_api_id: genre, overview: movie["overview"], release_date: movie["release_date"])}}

# g1 = Genre.create(name: "Action")
# g2 = Genre.create(name: "Comedy")
# g3 = Genre.create(name: "Drama")
# g4 = Genre.create(name: "Si-Fi")
# g5 = Genre.create(name: "Horror")
# g6 = Genre.create(name: "Thriller")
# g6 = Genre.create(name: "Romance")
# #g7 = Genre.create(name: "Family")

# u1 = User.create(username: "Mike", password: "1234")
# u2 = User.create(username: "Tom", password: "1234")
# u3 = User.create(username: "Jess", password: "1234")

# m1 = Movie.create(title:"Taken", genre_id: g1.id)
# m2 = Movie.create(title:"The Hangover", genre_id: g2.id)
# m3 = Movie.create(title:"Just Mercy", genre_id: g3.id)
# m4 = Movie.create(title:"Star Trek", genre_id: g4.id)
# m5 = Movie.create(title:"Insidious", genre_id: g5.id)
# m6 = Movie.create(title:"The Notebook", genre_id: g6.id) #romance
#Movie.create(title: "The Noteboke", genre_id: g5) #romance 

# mw1 = MoviesWatched.create(user_id: u1.id, movie_id: m3.id)
# mw2 = MoviesWatched.create(user_id: u3.id, movie_id: m2.id)
# mw3 = MoviesWatched.create(user_id: u2.id, movie_id: m6.id)
# mw4 = MoviesWatched.create(user_id: u1.id, movie_id: m1.id)

# gp1 = GenrePreference.create(user_id: u1.id, genre_id: g3.id)
# gp2 = GenrePreference.create(user_id: u1.id, genre_id: g6.id)
# gp3 = GenrePreference.create(user_id: u2.id, genre_id: g6.id)






binding.pry





