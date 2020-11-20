class Doctor
  
  attr_accessor :name, :patient, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    @appointments << apointment 
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients 
    appointments.collect {|appointment| appointment.patient}
  end
  
end