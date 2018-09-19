describe Player do
  let(:player_1) { Player.new('Patrick') }
  let(:player_2) { Player.new('Vu') }

  describe '#name' do
    it 'returns your name' do
      expect(player_1.name).to eq 'Patrick'
    end
  end

  describe '#receive_damage' do
    it 'reduces player health' do
      expect { player_1.receive_damage }.to change { player_1.hp }.by -10
    end
  end
end
