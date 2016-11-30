require('minitest/autorun')
require('minitest/rg')
require_relative('../dice')

class DiceTest < MiniTest::Test

  def test_can_roll_dice
    dice = Dice.new()
    assert_includes(1..6,dice.roll)
  end

end