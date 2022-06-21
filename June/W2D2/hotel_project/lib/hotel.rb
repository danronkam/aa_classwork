require_relative "room"

class Hotel
    def initialize(name, hash)
        @name = name
        @rooms = {}

        hash.each do |k, v|
            if !@rooms.has_key?(k)
                @rooms[k] = Room.new(v)
            end
        end
    end

    def name
        nameArr = @name.split(' ')
        capitalized = []

        nameArr.each do |word|
            capitalized << word.capitalize
        end
        capitalized.join(' ')
    end

    def rooms
        @rooms
    end

    def room_exists?(string)
       return true if @rooms.has_key?(string)
       return false if !@rooms.has_key?(string)
    end

    def check_in(person, room)
        if self.room_exists?(room)
            if @rooms[room].add_occupant(person)
                puts 'check in successful'
            else
                puts 'sorry, room is full'
            end
        else
            print 'sorry, room does not exist'
        end
    end

    def has_vacancy?
       @rooms.values.any? {|room| room.available_space > 0}
    end

    def list_rooms
        @rooms.each do |name, number|
            puts "#{name} : #{number.available_space}"  
        end
    end



  
end
