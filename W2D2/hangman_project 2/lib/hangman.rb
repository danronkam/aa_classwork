class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]


  

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = Array.new(0)
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    return @guess_word
  end

  def attempted_chars
    return @attempted_chars
  end

  def remaining_incorrect_guesses
    return @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    return attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    matching = []

    @secret_word.each_char.with_index do |letter, i| 
      if letter == char 
        matching << i
      end
    end
    matching
  end

  def fill_indices(char, indices)

    indices.each do |i|
      @guess_word[i] = char
    end
  end 

  def try_guess(char)

    if self.already_attempted?(char) 
      print 'that has already been attempted'
      return false
    end

    @attempted_chars << char

    indexArr = self.get_matching_indices(char)
    self.fill_indices(char, indexArr)
      
    if indexArr.length == 0 
      @remaining_incorrect_guesses -= 1
    end

    true
  end 

  def ask_user_for_guess
    print 'Enter a char:'
    char= gets.chomp
    return self.try_guess(char)
  end

    def win?
    if @guess_word.join("") == @secret_word
      print "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      print 'LOSE'
      return true
    else
      return false
    end
  end

def game_over?
    if win? || lose?
      print @secret_word
      return true
    else
      return false
    end 
  end 



  def lose?
    if @remaining_incorrect_guesses == 0
      print 'LOSE'
      return true
    else
      return false
    end
  end
  

end



