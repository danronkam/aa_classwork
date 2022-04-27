require_relative "board"
require_relative "player"

class Battleship
    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = @board.size/2
    end

    def board
        @board
    end

    def player 
        @player
    end

    def start_game
        @board.place_random_ships
        print @board.num_ships
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            print "you lose" 
            true
        else   
            false
        end
    end

    def win?
        if @board.num_ships == 0 
            print 'you win'
            true
        else
            false
        end
    end

    def game_over?
        if lose? || win?
            true
        else
            false
        end
    end

    def turn
        move = @player.get_move


        if @board.attack(move) != true
            @remaining_misses -= 1
            end
        @board.print
        print @remaining_misses
    end


end
