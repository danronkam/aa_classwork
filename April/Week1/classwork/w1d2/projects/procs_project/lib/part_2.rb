# bundle exec rspec

def reverser (str, &prc)
    prc.call(str.reverse)
end

def word_changer(sen , &prc)
    newSen = []
    senArr = sen.split(' ')

    senArr.each do |word|
        newSen << prc.call(word)
    end

   return newSen.join(' ')
end

def greater_proc_value(num, prc1, prc2)
    num1 = prc1.call(num)
    num2 = prc2.call(num)
    if num1 > num2
        return num1
    else
        return num2
    end
end

