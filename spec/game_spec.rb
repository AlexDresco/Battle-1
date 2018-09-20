require 'game'

describe Game do

  let(:amy) { Player.new("Amy") }
  let(:alex) { Player.new("Alex") }

  describe '#attack' do
    it 'should attack Player 2' do
      expect(alex).to receive(:is_attacked)
      subject.attack(alex)
    end
  end

end
