class Room

  attr_reader :name, :songs
  attr_accessor :till, :capacity

  def initialize (name, till, songs = {}, capacity)
    @name = name
    @till = till
    @songs = songs
    @capacity = capacity
  end



end
