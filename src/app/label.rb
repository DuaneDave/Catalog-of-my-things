class Label
  attr_accessor :items
  attr_reader :id, :title, :color

  def initialize(title, color)
    @id = Random.rand(1..150)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    # item.label = self
    items << item
  end
end