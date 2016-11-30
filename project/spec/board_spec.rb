require('minitest/autorun')
require('minitest/rg')
require_relative('../dice')
require_relative('../player')
require_relative('../board')

class BoardTest < MiniTest::Test

  def test_dice_increase_position
    player1 = Player.new({name: "Lorna", position: 1})
    board = Board.new({})
    dice = Dice.new()
    board.get_player(player1)
    final_position = board.dice_increase_position(dice)
    assert_includes(2..7, final_position)

  end

  def test_board_can_get_players
    player1 = Player.new({name: "Lorna", position: 1})
    player2 = Player.new({name: "Rory", position: 1})
    board = Board.new({})
    board.get_player(player1)
    board.get_player(player2)
    assert_equal(2, board.players.count)
  end

  def test_can_select_player
    player1 = Player.new({name: "Lorna", position: 1})
    player2 = Player.new({name: "Rory", position: 1})
    board = Board.new({})
    board.get_player(player1)
    board.get_player(player2)
    assert_equal("Lorna", board.select_player)
  end

  def test_can_select_position
    player1 = Player.new({name: "Lorna", position: 1})
    board = Board.new({})
    board.get_player(player1)
    board.position_of_player()
    assert_equal(1, board.position_of_player)
  end

  def test_can_find_final_position
    board = Board.new({7 => 4, 3 => 5})
    dice = Dice.new()
    player1 = Player.new({name: "Lorna", position: 1})
    board.get_player(player1)
    board.position_of_player()
    final_position = board.dice_increase_position(dice)
    assert_includes(2..6, board.find_portalled_position(final_position))
  end





  





end