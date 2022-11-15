require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :id, :archived, :genre, :label, :author

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..150)
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def can_be_archived?
    (DateTime.now - publish_date).to_i >= 3650
  end

  # def move_to_archive
  # end
end

item = Item.new('2002/11/14')
puts item.can_be_archived?