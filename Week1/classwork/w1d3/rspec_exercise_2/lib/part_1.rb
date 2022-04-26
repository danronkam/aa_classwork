#bundle exec rspec

def partition(arr, num) 
    less = []
    greater = []

    arr.each do |ele|
        if ele >= num
            greater << ele
        else
            less << ele
        end
    end

    return [less, greater]
end
 

def merge(obj1, obj2)
    newHash = {}

    obj1.each { |key, value| newHash[key] = value }
    obj2.each { |key, value| newHash[key] = value }

    newHash
end

def vowelRemover(word)
    censored = ''
    vowels = 'aeiouAEIOU'

    word.each_char do |letter|
        if vowels.include?(letter)
            censored += '*'
        else   
            censored += letter
        end
    end

    censored
end

def censor(sen, arr)
    senArr = sen.split
    newSen = []

    senArr.each do |word|

        if arr.include?(word.downcase) == true
            censored = vowelRemover(word)
            newSen << censored
        else
            newSen << word
        end
    end
         
    return newSen.join(' ')
end

def power_of_two?(num)
    product = 1

    while product < num
        product *= 2
    end

    product == num
end