class Song

  attr_reader :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    self.songs.map {|song| song.genre }
  end
  


end