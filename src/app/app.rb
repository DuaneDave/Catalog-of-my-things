require_relative 'book'
require_relative 'label'
require_relative 'music'
require_relative 'genre'
require_relative './preserve_data/preserve_data'

class App
  attr_reader :music_albums, :genres

  def initialize
    @preserve_music_album = PreserveData.new('./src/store/music_album.json')
    @preserved_genre = PreserveData.new('./src/store/genre.json')
    @preserved_books = PreserveData.new('./src/store/books.json')
    @preserved_labels = PreserveData.new('./src/store/labels.json')
    @books = []
    @labels = []
    @music_albums = []
    @genres = []
  end

  def list_all_books
    all_books = @preserved_books.load
    all_books.each_with_index do |book, index|
      puts "#{index + 1}. #{book['cover_state']}, #{book['publisher']}, #{book['publish_date']}"
    end
  end

  def list_all_labels
    all_labels = @preserved_labels.load

    all_labels.each_with_index do |label, index|
      puts "#{index + 1}. #{label['title']}, #{label['color']}"
    end
  end

  # Music Album
  def list_all_music_albums
    all_music_album = @preserve_music_album.load
    all_music_album.each_with_index do |music_album, index|
      puts "#{index + 1}. #{music_album['publish_date']}, #{music_album['on_spotify']}"
    end
  end

  # Genres
  def list_all_genres
    all_genres = @preserved_genre.load
    all_genres.each_with_index do |genre, index|
      puts "#{index + 1}. #{genre['name']}"
    end
  end

  # call this method to save data
  def preserve_all(path, data)
    preserve = PreserveData.new(path)
    preserve.save(data)
  end

  def add_label(item)
    puts 'Enter label title:'
    title = gets.chomp
    puts 'Enter label color:'
    color = gets.chomp

    label = Label.new(title, color)
    label.add_item(item)
    @labels << label

    arr = @preserved_labels.load

    @labels.each do |tag|
      arr << { title: tag.title, color: tag.color }
    end

    preserve_all('./src/store/labels.json', arr)

    puts 'Label added successfully'
  end

  def add_book
    puts 'Enter cover state:'
    cover_state = gets.chomp
    puts 'Enter publisher:'
    publisher = gets.chomp
    puts 'Enter publish date:'
    publish_date = gets.chomp

    book = Book.new(cover_state, publisher, publish_date)
    add_label(book)
    @books << book

    arr = @preserved_books.load

    @books.each do |item|
      arr << { cover_state: item.cover_state, publisher: item.publisher, publish_date: item.publish_date }
    end

    preserve_all('./src/store/books.json', arr)

    puts 'Book added successfully!'
  end
end
