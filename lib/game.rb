class Game
  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def attack(player1, player2)
    player2.receive_damage
  end

  def player_1_name
    @player1.name
  end
end