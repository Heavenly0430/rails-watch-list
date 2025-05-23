# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.destroy_all

movie1 = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
movie2 = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
movie3 = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
movie4 = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

List.destroy_all
puts "Creating movies…"
list1 = List.create(name: "Favorite")
list2 = List.create(name: "Crime")
list3 = List.create(name: "Comedy")
list4 = List.create(name: "Horror")
list5 = List.create(name: "SciFi")

puts "Creating bookmarks (assigning movies to lists)…"
Bookmark.create(comment: "My favourite", movie: movie1, list: list1)
Bookmark.create(comment: "My second favourite", movie: movie2, list: list1)
Bookmark.create(comment: "Loved it", movie: movie3, list: list2)
Bookmark.create(comment: "Best movie", movie: movie4, list: list2)

puts "#{List.count} list in the DB"
puts "#{Movie.count} movies in the DB"
puts "#{Bookmark.count} bookmarks in the DB"


# require 'uri'
# require 'net/http'

# url = URI("https://tmkitt.lewagon.com/db/movie/top_rated")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["accept"] = 'application/json'

# response = http.request(request)
# puts response.read_body
