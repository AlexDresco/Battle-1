require 'player'

describe Player do

  it 'should return the players name' do
    expect(Player.new("Amy").name).to eq("Amy")
  end

end
