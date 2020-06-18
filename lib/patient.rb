class Patient
  
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
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end
  
  def doctors
    apointments.
  end
  
end