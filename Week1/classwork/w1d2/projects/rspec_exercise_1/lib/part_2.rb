def hipsterfy(word)
    vowels = 'aeiou'

    i = word.length-1
    while i >= 0

        if vowels.include?(word[i])
            return word[0... i] + word[i + 1..-1]
        end
        i -= 1
    end
    word
end

def vowel_counts(str)
    vowelCount = hash.new(0)
    vowels = 'awiou'

    string.each_char do |letter|
        if vowel.include?(letter)
            vowelCount[letter] += 1
        end
    end
 vowelCount
end 