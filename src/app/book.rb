require_relatie 'item'

class Book < Item
  def initialize (cover_state, publisher, publish_date)
    super(publish_date)
    @cover_state = cover_state
    @publisher = publisher
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end