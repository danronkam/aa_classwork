class Board
    def initialize(size)
        @size = size
        @grid = Array.new(@size) {Array.new(@size)}
    end

    def size 
        @size
    end

    def [](pos)
        row = pos[0]
        col = pos[1]
        @grid[row][col]
    end

    def []=(pos, mark)
        row = pos[0]
        col = pos[1]
        @grid[row][col] = mark
    end

    def complete_row?(mark)
        @grid.any? {|subArr| subArr.all?(mark)}
    end

    def complete_col?(mark)
        @grid.transpose.any? {|subArr| subArr.all?(mark)}
    end

    def complete_diag?(mark)
        ltr = (0...@grid.length).all? do |i|
            pos = [i, i]
            self[pos] == mark
        end

        rtl = (0...@grid.length).all? do |i|
            row = i 
            col =@grid.length - 1 - i
            pos = [row, col]
            self[pos] == mark
        end

        ltr || rtl
    end

    def winner?(mark)
        return true if self.complete_col?(mark) || self.complete_diag?(mark) || self.complete_row?(mark)
        return false
    end

    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @grid.each { |row| p row }
    end
end
