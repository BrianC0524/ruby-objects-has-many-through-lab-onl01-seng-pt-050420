class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    
    @name = name
    save
    
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |app|
      
      app.doctor == self
      
    end
  end
  
  def patients
    new_appointment.collect do |app|
      app.patient
    end
  end
end