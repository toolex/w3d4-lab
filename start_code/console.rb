require_relative("models/movie")
require_relative("models/star")
require_relative("models/casting")

require("pry")

# delete_all


movie1 = Movie.new({ "title" => "John Wick", "genre" => "Action"})
movie1.save()
movie2 = Movie.new({ "title" => "Bill and Ted's Excellent Adventure", "genre" => "Comedy"})
movie2.save()
movie3 = Movie.new({ "title" => "Ad Astra", "genre" => "Sci-Fi"})
movie3.save()

star1 = Star.new({"first_name" => "Keanu", "last_name" => "Reeves"})
star1.save()
star2 = Star.new({"first_name" => "Brad", "last_name" => "Pitt"})
star2.save()
star3 = Star.new({"first_name" => "Willem", "last_name" => "Dafoe"})
star3.save()

casting1 = Casting.new({ "star_id" => star1.id, "movie_id" => movie1, "fee" => 2000000})
casting1.save()
casting2 = Casting.new({ "star_id" => star1.id, "movie_id" => movie2, "fee" => 500000})
casting2.save()
casting3 = Casting.new({ "star_id" => star2.id, "movie_id" => movie3, "fee" => 9000000})
casting3.save()
casting4 = Casting.new({ "star_id" => star3.id, "movie_id" => movie1, "fee" => 1000000})
casting4.save()

pry.binding
nil
