require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :id, :genre, :label, :author, :archived

  def initialize(publish_date)
    @id = Random.rand(1..150)
    @publish_date = Date.parse(publish_date)
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def add_label(label)
    label.items << self unless label.items.include? self
    @label = label
  end

  def add_author(author)
    @author = author
  end

  private

  def can_be_archived?
    (DateTime.now - publish_date).to_i >= 3650
  end
end
