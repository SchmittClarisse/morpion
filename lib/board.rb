class Board
    attr_accessor :board, :count_turn
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  
    def initialize
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
          #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
      @board = {"A1" => " ", "A2" => " ", "A3" => " ", "B1" => " ", "B2" => " ", "B3" => " ", "C1" => " ", "C2" => " ", "C3" => " "}
      @count_turn = 0
    end
  
    def play_turn(player)
      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      puts "Quelle case restante souhaites-tu jouer ?"
      print ">"
      choice = gets.chomp
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
      @board[choice]= "#{player.player_value}"
      puts @board
      @count_turn = @count_turn + 1
    end
  
    def victory?
      #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      if @count_turn < 9
        if  @board["A1"] == @board["A2"] && @board["A1"] == @board["A3"]
          puts "La partie est finie et il y a un vainqueur !"
        elsif @board["B1"] == @board["B2"] && @board["B1"] == @board["B3"]
          puts "La partie est finie et il y a un vainqueur !"
        elsif @board["C1"] == @board["C2"] && @board["C1"] == @board["C3"]
          puts "La partie est finie et il y a un vainqueur !"
        elsif @board["A1"] == @board["B1"] && @board["A1"] == @board["C1"]
          puts "La partie est finie et il y a un vainqueur !"
        elsif @board["A2"] == @board["B2"] && @board["A2"] == @board["C2"]
          puts "La partie est finie et il y a un vainqueur !"
        elsif @board["A3"] == @board["B3"] && @board["A3"] == @board["C3"]
          puts "La partie est finie et il y a un vainqueur !"
        elsif @board["C1"] == @board["B2"] && @board["B2"] == @board["A3"]
          puts "La partie est finie et il y a un vainqueur !"
        elsif @board["A1"] == @board["B2"] && @board["B2"] == @board["C3"]
          puts "La partie est finie et il y a un vainqueur !"
        end
      else
        puts "La partie est finie et c'est un match nul ! :-("
      end
    end
  end