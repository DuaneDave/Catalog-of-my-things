require 'rspec'
require_relative('./../../spec/spec_helper.rb')
require_relative './../app/music'


describe Music do
  context 'when initialized' do
    it 'Should create a new music instance' do
      music = Music.new('2021-10-01', true)
      # expect(music.publish_date).to eq('2021-01-01')
      expect(music.on_spotify).to eq(true)
      expect(music.can_be_archived?).to be(false)
    end
  end
end
