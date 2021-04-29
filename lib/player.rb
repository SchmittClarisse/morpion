class Player
    attr_reader :player_name, :player_value
    
    def initialize(name_of_player, value_of_player)
        @player_name = name_of_player
        @player_value = value_of_player
    end
  end