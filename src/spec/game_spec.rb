require_relative '../app/game'

describe Game do
  context 'The game class will create a game at instance' do
    it 'should create a game class at instatce' do
      game = Game.new('Super Mario', true, 2015, '2015-01-01')
      expect(game).to be_an_instance_of(Game)
      expect(game.title).to eq('Super Mario')
      expect(game.multiplayer).to be(true)
      expect(game.can_be_archived?).to be(false)
    end
  end
end