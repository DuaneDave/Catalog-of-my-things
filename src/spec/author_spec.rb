require_relative './../app/author'
require_relative './../app/game'

describe 'Author' do
  before :each do
    @test_author = Author.new('First Name', 'Last Name')
    @test_item = Game.new('black', true, '2001-01-01', '2000-01-01')
  end

  it 'should be an instance of Author' do
    expect(@test_author).to be_an_instance_of(Author)
  end

  it 'should have a first name' do
    expect(@test_author.first_name).to eq('First Name')
  end

  it 'should have a last name' do
    expect(@test_author.last_name).to eq('Last Name')
  end
end
