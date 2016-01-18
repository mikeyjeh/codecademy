movies = {
  "quantum of solace" => 3,
  "casino royale" => 4,
  "golden eye" => 3
}

puts "add, update, display, delete"
choice = gets.chomp

case choice
when "add"
  puts "what movie do you want to add?"
  title = gets.chomp
  puts "rate it 1-4"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
  if movies[title].nil?
    movies[title.to_sym] = rating.to_i
  else
    puts "that movie already exists"
  end

when "update"
  puts "what movie do you want to update?"
  title = gets.chomp
  if movies[title].nil?
    puts "that movie doesn't exist"
  else
    puts "what should it be rated?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} was updated with a rating of #{rating}."
  end

when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end

when "delete"
  puts "what movie do you want to delete"
  title = gets.chomp
  if movies[title].nil?
    puts "that movie doesn't exist"
  else
    movies.delete(title)
    puts "#{title} was deleted from the hash."
  end
end
