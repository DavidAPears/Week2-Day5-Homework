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

  def remove_guest_from_room(guest_leaves)
    @people_in_room.delete(guest_leaves)
  end

  def add_song_to_room(new_song)
    @songs.push(new_song)
  end

end
