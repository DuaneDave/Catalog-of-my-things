require 'rspec'
require_relative('spec_helper')
require_relative '../src/app/genre'
require_relative '../src/app/item'

describe Genre do
    context 'when initialized' do
      it 'Should create a genre when instantiated' do
        genre = Genre.new('Rock')
        item = Item.new('2020-10-01')
        genre.add_item(item)
        expect(genre.name).to eq('Rock')
      end
    end
  end