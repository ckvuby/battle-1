describe Player do
  let(:patrick) { Player.new('Patrick') }
  describe '#name' do
    it 'returns your name' do
      expect(patrick.name).to eq 'Patrick'
    end
  end
end
