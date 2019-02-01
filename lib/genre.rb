class Genre

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
    def new_song(name, genre )
    Song.new(name, self, genre )
  end
  
   def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artist
    self.songs.map {|song| song.genre }
  end

end
