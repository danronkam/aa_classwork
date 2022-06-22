class Board
    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n * n 
    end

    def size
        @size
    end

    def [](pair)
        row = pair[0]
        column = pair[1]

        return @grid[row][column]
    end
        
    def []=(pos, value)
        row = pos[0]
        column = pos[1]

        @grid[row][column] = value
    end

    def num_ships
        counter = 0
        @grid.each do |subArr|
            subArr.each do |ele|
                counter += 1 if ele == :S
            end
        end

        counter
    end

    def attack(pos)
        if self.[](pos) == :S
            self.[]=(pos, :H)
            puts 'you sunk my battleship!'
            return true
        else
            self.[]=(pos, :X)
            return false
        end
    end
  
    def place_random_ships
        shipTotal  = @size * 0.25
        

        while self.num_ships < shipTotal
            row = rand(0...@grid.length)
            column = rand(0...@grid.length)
            pos = [row, column]

            self[pos] = :S
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

    def self.print_grid(grid)
        grid.each do |row|
            puts row.join(' ')
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(self.hidden_ships_grid)
    end
            
end
