require_relative 'app'

def display_options
  puts 'Choose an option:'

  puts '1 List all book'
  puts '5 List all labels'
  puts '9 Add book'
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
    when 4
      app.list_all_genres
    when 5
      app.list_all_labels
    when 8
      app.add_music_album
    when 9
      app.add_book
    when 0
      break
    else
      puts 'Invalid option'
    end
  end
end

main
