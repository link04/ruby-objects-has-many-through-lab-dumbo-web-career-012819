class Patient

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @dob = dob
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appoinment.all.select do |appoinment|
      appoinment.patient == self
    end
  end

  def doctors
    self.appointments.map { |appoinment| appoinment.doctor }
  end


end
