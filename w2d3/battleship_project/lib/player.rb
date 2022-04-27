class Player
    def get_move
        print 'enter a position with coordinates separated 
        with a space like `4 7`' 
        numbers = gets.chomp.split(' ').map(&:to_i)
    end

    def valid?(position)
    end
end
