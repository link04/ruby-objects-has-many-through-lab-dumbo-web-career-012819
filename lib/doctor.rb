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

  def new_appointment(patient, date )
    Appoinment.new(date, patient, self )
  end
  
  def appointments
    Appoinment.all.select do |appoinment|
      appoinment.doctor == self
    end
  end

  def doctors
    self.appointments.map { |appoinment| appoinment.doctor }
  end

end
