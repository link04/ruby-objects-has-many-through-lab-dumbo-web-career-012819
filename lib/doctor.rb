class Doctor

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
     Appoinment.new(date, patient, self)
  end
  
  def appointments
    Appoinment.all.select do |appoinment|
      appoinment.doctor == self
    end
  end

  def patients
    appointments.map { |appoinment| appoinment.patient }
    
  end

end
