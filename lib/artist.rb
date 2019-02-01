
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

  def new_song(name, genre )
    Song.new(name, self, genre )
  end
  
   def songs
    Appointment.all.select do |appoinment|
      appoinment.doctor == self
  end

  def patients
    self.appointments.map { |appoinment| appoinment.patient }
  end

  end
 
end
