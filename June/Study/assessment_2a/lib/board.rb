class Board
    def initialize(size)
        @size =  size
        @grid = Array.new(size) {Array.new(size)}
    end

    def size
        @size
    end

    def [](pos)
        row = pos[0]
        col = pos[1]
        return @grid[row][col]
    end

    def []=(pos, mark)
        row = pos[0]
        col = pos[1]
        
        @grid[row][col] = mark
    end

    def complete_row?(mark)
        @grid.any? { |row| row.all?(mark) }
    end

    def complete_col?(mark)
        @grid.transpose.any? { |col| col.all?(mark) }
    end

    def complete_diag?(mark)
        left_to_right = (0...@grid.length).all? do |i|
            pos = [i, i]
            self[pos] == mark
        end

        right_to_left = (0...@grid.length).all? do |j|
            row = j
            col = @grid.length - 1 - j
            pos = [row, col]
            self[pos] == mark
        end

        left_to_right || right_to_left
    end

    def winner?(mark)
        return true if self.complete_col?(mark) || self.complete_row?(mark) || self.complete_diag?(mark)
        return false
    end

    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @grid.each { |row| p row }
    end
end
