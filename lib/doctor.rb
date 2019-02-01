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

  def new_appointment(doctor, date )
    Appoinment.new(date, self, doctor )
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
