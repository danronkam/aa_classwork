def average(num1, num2)
    (num1 + num2) / 2.0

end

def average_array(arr)
    (arr.sum) / (arr.length * 1.0)
    
end

def repeat(str, num)
    repeated = str * num

    repeated
end 

def yell(string)
    yelled = string.upcase + '!'

    yelled
end

def alternating_case(sentence)
    words = sentence.split(" ")
  
    new_words = words.map.with_index do |word, i|
      if i.even?
        word.upcase
      else
        word.downcase
      end
    end
  
    new_words.join(" ")
  end
  