class Song

  attr_reader :name, :artist, :genre
  @@all = []

  def initialize(date, artist, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end