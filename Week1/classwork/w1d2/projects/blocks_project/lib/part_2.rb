# bundle exec rspec

def all_words_capitalized?(arr)

    arr.all? { |word| word == word.capitalize}

end

def no_valid_url?(arr) 
    badEnds = ['.com', '.net', '.io', '.org']

    arr.none? do |links|
    end 

end

def any_passing_students?(students)
    students.any? do |student|
      average = student[:grades].sum / (student[:grades].length * 1.0)
      average >= 75
    end
  end