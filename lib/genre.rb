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
  

  
  def appointments
    Appointment.all.select do |appoinment|
      appoinment.patient == self
    end
  end

  def doctors
    self.appointments.map { |appoinment| appoinment.doctor }
  end

end
