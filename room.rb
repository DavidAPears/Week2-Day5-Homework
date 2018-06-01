class Room

  attr_reader :name, :songs, :people_in_room
  attr_accessor :till, :capacity

  def initialize (name, till, songs = {}, people_in_room, capacity)

    @name = name
    @till = till
    @songs = songs
    @people_in_room = people_in_room
    @capacity = capacity
  end

  def number_of_guests
    return @people_in_room.count
  end

  def add_guest_to_room(new_guest)
    @people_in_room.push(new_guest)
  end

end
