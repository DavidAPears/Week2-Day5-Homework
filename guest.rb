class Guest

  attr_reader :name, :wallet, :age, :fave_song


  def initialize (name, age, fave_song, wallet)
    @name = name
    @age = age
    @fave_song = fave_song
    @wallet = wallet
  end


end
