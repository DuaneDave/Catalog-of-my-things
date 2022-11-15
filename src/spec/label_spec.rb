# frozen_string_literal: true

require_relative './../app/label'
require_relative './../app/item'

describe Label do
  context 'when initialized' do
    it 'Should create a label when instantiated' do
      label = Label.new('Action', 'Black')
      item = Item.new('2020-01-01')
      label.add_item(item)
      expect(label.title).to eq('Action')
      expect(label.color).to eq('Black')
      expect(label.items).to eq([item])
    end
  end
end
