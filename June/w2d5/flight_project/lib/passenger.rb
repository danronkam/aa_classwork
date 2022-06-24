class Passenger
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def name 
        @name
    end

    # def name=
    # end

    # def flight_numbers
    # end

    # def flight_numbers=
    # end
    
    def has_flight?(flight_num)
        if @flight_numbers.include?(flight_num.upcase)
            return true 
        else
            return false
        end
    end

    def add_flight(flight_num)
        if !self.has_flight?(flight_num)
            @flight_numbers << flight_num.upcase
        end
    end
end