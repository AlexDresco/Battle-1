require 'game'

describe Game do
  subject { Game.new(player1,player2) }
  let(:player1) { Player.new("Amy") }
  let(:player2) { Player.new("Alex") }

  describe '#attack' do
    it 'should attack Player 2' do
      expect(player2).to receive(:is_attacked)
      subject.attack(player2)
    end
  end

  describe "#player1" do
    it 'returns players 1 name' do
      expect(subject.player1).to eq player1
    end
  end

  describe "#player2" do
    it 'returns players 2 name' do
      expect(subject.player2).to eq player2
    end
  end

end
