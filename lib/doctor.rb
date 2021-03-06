class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def appointments
        Appointment.all.select { |appt| appt.doctor == self}
    end 

    def new_appointment(date,patient)
        Appointment.new(date, patient, doctor = self)
    end 

    def patients
        Appointment.all.map {|appt| appt.patient}.uniq
    end


end