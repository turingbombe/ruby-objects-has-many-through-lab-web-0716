class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    self.appointments.last.patient = self
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end