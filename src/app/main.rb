# frozen_string_literal: true

def main
  puts 'Welcome to Catalog of My Things App!'

  def options(option)
    case option
    when 1
      list_all_books
    when 2
      list_all_music_album
    when 3
      list_all_games
    when 4
      list_all_movies
    when 5
      puts 'Thank you for using our app! Have a nice day'
    else
      puts 'Incorrect option, please try again'
    end
  end
end

main
