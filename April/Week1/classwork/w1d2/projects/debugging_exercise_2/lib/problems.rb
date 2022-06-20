# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def largest_prime_factor(num) 
    largestPrime = 0

    i = 2
    (i... num).each do |factor|
        if num % factor == 0 && prime?(num) && factor > largestPrime
            largestPrime = factor
        end
        i++
    end

    return largestPrime
end

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

