require("minitest/autorun")
require_relative("../song.rb")
require ("minitest/rg")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Hey Jude", "The Beatles")
  end

  def test_song_title
    assert_equal("Hey Jude", @song.title())
  end

  def test_song_artist
    assert_equal("The Beatles", @song.artist())
  end


end











# Kareoke
# Sweet Caroline – Neil Diamond
# Don’t Stop Believin’ – Journey
# Bohemian Rhapsody – Queen
# Wonderwall - Oasis
# Hey Jude - The Beatles
