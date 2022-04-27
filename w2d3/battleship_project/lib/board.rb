class Board
    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n*n
    end

    def size
        @size
    end

    def [](position) #return the element of @grid at the given position
        row = position[0]
        col = position[1]

        @grid[row][col] 
    end   

    def []=(position, value) #set the given position of @grid to the given value
        row = position[0]
        col = position[1]

        @grid[row][col] = value
    end

    def num_ships
        @grid.flatten.count(:S)
    end
    
    def attack(position)

        if self[position] == :S
            self[position] = :H
            print 'you sunk my battleship!'
            return true
        else  
            self[position] = :X
            return false
        end
    end

    def place_random_ships
        max = size * 0.25
      
        # i = 0
        while self.num_ships < max
            randRow = rand(0...@grid.length)
            randCol = rand(0...@grid.length)
            randPos = [randRow, randCol]
            
            self[randPos] = :S
            # i += 1
        end
    end

    

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S
                    :N
                else
                    ele
                end
            end
        end
    end
    
    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(self.hidden_ships_grid)
    end

end



