describe Game do
  let(:player_1) { double(:player, name: 'Patrick') }
  let(:player_2) { double(:player, name: 'Vu') }
  let(:double_game) { Game.new(player_1, player_2) }
  let(:game) { Game.new(Player.new('Patrick'), Player.new('Vu')) }

  # describe 'initialize' do
  #   it 'creates two player instances' do
  #     game = Game.new(player_1, player_2)
  #     specify { expect(game.player1).to exist }
  #   end
  # end
  
  describe '#attack' do
    it 'reduces enemy hp by 10' do
      allow(player_2).to receive(:receive_damage) { true }
      expect(subject.attack(player_1, player_2)).to eq true
    end
  end

  describe '#name' do
    it 'returns player name' do
      expect(game.player_1_name).to eq 'Patrick'
    end
  end
end