class Doctor
  attr_accessor :name, :appointments, :patients
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    self.appointments.last.doctor = self
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end