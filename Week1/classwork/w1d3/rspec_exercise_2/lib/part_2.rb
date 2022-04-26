#bundle exec rspec

def palindrome?(string)

    string.each_char.with_index do |letter, i|
        first = string[i]
        last = string[string.length - 1 - i]

        if first != last
            return false
        end

    end

    return true
end

def substrings(string)
    substrings = []

    (0...string.length).each do |start_idx|
        (start_idx...string.length).each do |end_idx|
            substrings << string[start_idx..end_idx]
        end
      end

    substrings
end

def palindrome_substrings(string)
    newArr = []
    substrings = substrings(string) #this is an array

    substrings.each do |ele|
        if palindrome?(ele) == true && ele.length > 1
            newArr << ele
        end
    end

    newArr
end
