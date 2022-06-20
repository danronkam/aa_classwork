class Board

    def initialize
        @grid = Array.new(3) {Array.new(3, "'_'")}
    end

    def valid?(position)
            row, col = pos
            pos.all? do |i|
                0 <= i && i < @grid.length
            end
        end

    def empty?(position)
        if @grid[position] == "'_'"
            return true
        else
            return false
        end 
    end

    def place_mark(position,mark)

        if !valid?(position)  || !empty?(position) 
            raise error
        end

        self[position] = mark
    end

    

end