require ("minitest/autorun")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require ("minitest/rg")


class RoomTest < Minitest::Test

  def setup
    @room1 = Room.new("The Karaoke Cave", 275, 4, [], 15 )
    @room2 = Room.new("5 Bar", 150, 7, [], 25)
    @room3 = Room.new("Limelight Bar", 130, 12, [], 55)

    @song1= Song.new("Hey Jude", "The Beatles")
    @song2= Song.new("Sweet Caroline", "Neil Diamond")
    @song3= Song.new("Don’t Stop Believin’", "Journey")
    @song4= Song.new("Bohemian Rhapsody", "Queen")
    @song5= Song.new("Wonderwall", "Oasis")

    @guest1=Guest.new("David", 40, "Hey Jude", 100)
    @guest2=Guest.new("Fred", 37, "Sweet Caroline", 75)
  end

  def test_room_name
    assert_equal("The Karaoke Cave", @room1.name)
  end

  def test_check_songs
    assert_equal(4, @room1.songs)
  end

  def test_check_capacity
    assert_equal(55, @room3.capacity)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1.name())
    assert_equal(1, @room1.number_of_guests())
  end

  def test_remove_guest_from_room
    @room1.remove_guest_from_room(@guest1.name())
    assert_equal(0, @room1.number_of_guests)
  end

end
