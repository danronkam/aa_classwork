class Player
    def get_move
        puts 'enter a position with coordinates separated with a space like `4 7`'
        input = gets.chomp
        inputArr = input.split(' ')
        return position = [inputArr[0].to_i, inputArr[1].to_i]
    end

end
