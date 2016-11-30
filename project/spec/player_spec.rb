require('minitest/autorun')
require('minitest/rg')
require_relative('../player')

class PlayerTest < MiniTest::Test

  def test_can_get_players_name
    player1 = Player.new({name: "Lorna", position: 1})
    name = player1.name()
    assert_equal("Lorna", name)
  end

  def test_can_get_players_position
    player1 = Player.new({name: "Lorna", position: 1})
    position = player1.position()
    assert_equal(1, position)
  end

  def test_can_change_position
    player1 = Player.new({name: "Lorna", position: 1})
    position = player1.change_position(3)
    assert_equal(4, position)

  end



end