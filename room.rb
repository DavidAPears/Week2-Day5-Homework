class Room

  attr_reader :name, :songs
  attr_accessor :till

  def initialize (name, till, songs = {})
    @name = name
    @till = till
    @songs = songs
  end


end
