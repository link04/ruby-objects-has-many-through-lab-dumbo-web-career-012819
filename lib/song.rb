class Song

  attr_reader :date, :artist, :genre
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