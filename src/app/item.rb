require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :id, :genre, :label, :author, :archived

  def initialize(publish_date)
    @id = Random.rand(1..150)
    @publish_date = Date.parse(publish_date)
    @archived = false
  end

  def can_be_archived?
    (DateTime.now - publish_date).to_i >= 3650
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end

item = Item.new('2002/11/14')
puts item.can_be_archived?