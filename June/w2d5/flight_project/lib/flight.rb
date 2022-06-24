class Flight
    def initialize(flight_num, capacity)
        @flight_number = flight_num
        @capacity = capacity
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        if @passengers.length == @capacity
            return true
        else
            return false
        end
    end

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !self.full?
            @passengers << passenger
        end
    end

    def list_passengers
        @passengers.map(&:name)
  
        # names = []

        # @passengers.each do |passenger|
        #     names << passenger.name
        # end
        # name
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end

end

    