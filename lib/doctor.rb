class Doctor

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appoinment.all.select do |appoinment|
      appoinment.doctor == self
    end
  end

  def patients
    self.appointments.map { |appoinment| appoinment.patient }
  end

end
