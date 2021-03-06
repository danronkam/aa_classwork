require_relative "room"

class Room
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def capacity
        return @capacity
    end 

    def occupants
        return @occupants
    end

    def full?
        @occupants.length == @capacity
    end

    def available_space
        capacity - occupants.length
    end

    def add_occupant(name)
        if !full? 
            @occupants << name
            return true
        else
            return false
        end
    end


end
  

# class Hotel


