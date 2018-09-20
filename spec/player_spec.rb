require 'player'

describe Player do

subject(:amy) { Player.new("Amy") }
subject(:alex) { Player.new("Alex") }


  describe '#name' do
    it 'should return the players name' do
      expect(Player.new("Amy").name).to eq("Amy")
    end
  end

  describe '#is_attacked' do
    it 'when Player 1 attacks player 2, Player 1 HPs should decrease by 10' do
      amy.is_attacked
      expect(amy.hp).to eq(Player::INITIAL_SCORE - 10)
    end
  end


end
