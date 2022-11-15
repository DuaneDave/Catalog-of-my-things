require_relative './../app/book'

describe Book do
  context 'when initialized' do
    it 'Should create a new book instance' do
      book = Book.new('Men in black', 'David Legend', '2022/11/19')
      expect(book.cover_state).to eq('Men in black')
      expect(book.publisher).to eq('David Legend')
      expect(book.can_be_archived?).to be(false)
    end
  end
end