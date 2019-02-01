
class Artist

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre, )
    Appointment.new(song_name, genre, self )
  end
  
  def appointments
    Appointment.all.select do |appoinment|
      appoinment.doctor == self
    end
  end

  def songs
    self.appointments.map { |appoinment| appoinment.patient }
  end

end
