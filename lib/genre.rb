class Genre
  attr_accessor :all, :songs
  @@all = []

  def initialize(name)
    @name = name
    self.all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs = Songs.all.collect {|song| song.genre == self}
  end

  def artists
    
  end

end
