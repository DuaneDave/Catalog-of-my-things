require_relative 'item'

class Game < Item
  attr_accessor :title, :multiplayer, :last_played_at, :id

  def initialize(title, multiplayer, last_played_at, *args)
    super(*args)
    @title = title
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && Time.new.year - last_played_at > 2
  end
end
