require ("minitest/autorun")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")
require ("minitest/rg")



class GuestTest < Minitest::Test

  def setup

    @guest1=Guest.new("David", 40, "Hey Jude", 100)
    @guest2=Guest.new("Fred", 37, "Sweet Caroline", 75)
    @guest3=Guest.new("Alex", 25, "Don’t Stop Believin’", 50)
    @guest4=Guest.new("Sarah", 21, "Wonderwall", 60)
  end

  def test_guest_name
    assert_equal("David", @guest1.name)
  end

  def test_guest_fave_song
    assert_equal("Wonderwall", @guest4.fave_song)
  end

  def test_guest_age
    assert_equal(25, @guest3.age)
  end

  

end
