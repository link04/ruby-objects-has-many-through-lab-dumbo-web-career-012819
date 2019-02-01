class Song

  attr_reader :name, :artist, :genre
  @@all = []

  def initialize(date, artist, doctor)
    @name = name
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end