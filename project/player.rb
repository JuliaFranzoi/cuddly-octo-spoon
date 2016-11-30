class Player

  attr_reader :name
  attr_accessor :position

  def initialize(player_hash)
    # @player_hash = player_hash
    @name = player_hash[:name]
    @position = player_hash[:position]
  end

  def change_position(num)
    @position += num
  end


end










