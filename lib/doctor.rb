require 'pry'
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
     Appoinment.new(datepatient, , self)
  end
  
  def appointments
    Appoinment.all.select do |appoinment|
      appoinment.doctor == self
    end
  end

  def patients
    self.appointments.map { |appoinment| appoinment.patient }
    binding.pry
  end

end
