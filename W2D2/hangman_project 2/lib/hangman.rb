class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]


  

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = random_word
    

end
