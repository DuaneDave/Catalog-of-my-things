require_relative 'app'

def display_options
  puts 'Choose an option:'

  puts '1 List all book'
  puts '2 List all music albums'
  puts '3 List all genres'
  puts '4 List all labels'
  puts '5 List all games'
  puts '6 List all authors'
  puts '7 Add music album'
  puts '8 Add book'
  puts '9 Add game'
  puts '0 Exit'

  gets.chomp.to_i
end

def main
  app = App.new
  puts 'Welcome to Catalog of My Things App!'

  loop do
    option = display_options

    case option
    when 1
      app.list_all_books
    when 2
      app.list_all_music_albums
    when 3
      app.list_all_genres
    when 4
      app.list_all_labels
    when 5
      app.list_all_games
    when 6
      app.list_all_authors
    when 7
      app.add_music_album
    when 8
      app.add_book
    when 9
      app.add_game
    when 0
      break
    else
      puts 'Invalid option'
    end
  end
end

main
