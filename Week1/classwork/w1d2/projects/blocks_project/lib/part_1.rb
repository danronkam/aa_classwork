# bundle exec rspec

def select_even_nums(arr) 

    evenArr = arr.select {|number| number.even?}

end

def reject_puppies(dogs)
    
    oldDogs = dogs.reject {|dog| dog['age'] < 3}

end

def count_positive_subarrays(arr)
    arr.count {|subarray| subarray.sum > 0}

end

def aba_translate(word)
    vowels = 'aeiou'
    newWord = ''

    word.each_char do |letter|

        if vowels.include?(letter) 
            newWord += letter + 'b' + letter
        else 
            newWord += letter
        end
    end
    newWord
end 

def aba_array(array)
    abaArr = []

    array.each do |word|
        abaArr << aba_translate(word)
    end
    
    return abaArr
end
# a = [:foo, 'bar', 2, 'bat']
# a1 = a.reject {|element| element.to_s.start_with?('b') }
# a1 # => [:foo, 2]