require_relative 'board'
class Game
  attr_accessor :current_player, :status, :board, :players
  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    puts "Joueur 1 merci de saisir votre nom : "
    @player1 = Player.new(gets.chomp, "X")
    puts "Joueur 2 merci de saisir votre nom : "
    @player2 = Player.new(gets.chomp, "O")
    @players = [@player1, @player2]
    @status = "on going"
    @board = Board.new
    @current_player = @players[0]
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    @board.play_turn
    
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    
end