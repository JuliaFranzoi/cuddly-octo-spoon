class Board

attr_accessor :players

  def initialize(portal)
    @players = []
    @portal = portal
    
  end

  def get_player(new_player)
    @players << (new_player)
  end

  def select_player
    return @players[0].name
  end

  def find_portalled_position(current_position)
    if @portal.keys.include? current_position
      return @portal[current_position]
    else 
      return current_position
    end
  end

  def position_of_player
    return @players[0].position
  end

  def dice_increase_position(dice)
    return position_of_player + dice.roll
  end




  # def num_players
  #   return @players.length()
  # end


  # def add_fish(fish)
  #   @fish_array << (fish)
  # end
end