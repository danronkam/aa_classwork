class Hotel
    def initialize(string, hash)
        @name = string
        @rooms = {}

        hash.each do |roomNames, capacity|
            @rooms[roomNames] = Room.new(capacity)
        end
    end

    def name
        nameArr = @name.split
        newName = []

        nameArr.each do |word|
            newName << word.capitalize
        end

        return newName.join(' ')
    end
    
    def rooms
        @rooms
    end

    def room_exists?(roomname)
        rooms.has_key?(roomname)
    end

    def check_in(person, roomname)
        while self.room_exists?(roomname) != true
          print "sorry, room does not exist"
          return
        end
    
        exists = @rooms[roomname].add_occupant(person)
        if exists
            print "check in successful"
        else
            print "sorry, room is full"
        end
      end
    
    def has_vacancy?
        @rooms.values.any?{ |room| room.available_space > 0 }
    end
    
    def list_rooms
        @rooms.each { |name, room| puts "#{name} : #{room.available_space}" }
    end
end
    


        




