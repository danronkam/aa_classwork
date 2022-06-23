class Board
    def initialize
        @grid = Array.new(3) {Array.new(3,'_')}
    end

    def valid?(position)
        row = position[0]
        column = position[1]

        return true if @grid[row][column] != nil
    end

    def empty?(position)
        row = position[0]
        column = position[1]

        if @grid[row][column] == '_'
            return true
        else
            return false
        end
    end

    def place_mark(position, mark)
        row = position[0]
        column = position[1]

        if !self.empty?(position) || !self.valid?(position)
            raise 'error'
        else
            @grid[row][column] = mark
        end
    end

    def print
        @grid.each do |row|
            puts row.join(' ')
        end
    end

    def win_row?(mark)
        @grid.any? { |row| row.all?(mark) }
    end

    def win_col?(mark)
        @grid.transpose.any? {|col| col.all?(mark)}
    end
    
end


