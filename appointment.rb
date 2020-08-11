class Appointment
    attr_accessor :location, :propuse, :hour, :min
    def initialize (location, prupose, hour, min)
        @location = location
        @prupose = propuse
        @hour = hour
        @min = min
    end
end

class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize (location, prupose, hour, min, day)
        @location = location
        @prupose = propuse
        @hour = hour
        @min = min
        @day = day
    end
    def occurs_on?(day)
       puts @day == day
    end

    def to_s ()
        puts "Reunión mensual en #{@location} sobre #{@prupose} el día #{@day} a la(s) #{@hour}:#{@min}."
    end
end

class DailyAppointment < Appointment
    def occurs_on?(hour, min)
        puts @hour == hour && @min == min
    end
    def to_s ()
        puts "Reunión diaria en #{@location} sobre #{@prupose} a la(s) #{@hour}:#{@min}."
    end
end

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    def initialize (location, prupose, hour, min, day, month, year)
        @location = location
        @prupose = propuse
        @hour = hour
        @min = min
        @day = day
        @month = month
        @year = year
    end
    def occurs_on?(day, month, year)
        puts @day == day && @month == month && @year == year
    end
    def to_s ()
        puts "Reunión única en #{@location} sobre #{@prupose} el #{@day}/#{@month}/#{@yeat} la(s) #{@hour}:#{@min}." 
    end
end
    


puts OneTimeAppointment.new('Desafío Latam', ' Trabajo', 14,30,4,6,2019)
puts DailyAppointment.new('Desafío Latam', ' Educación', 8,15)
puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)


ap3 = MonthlyAppointment.new('Desafío Latam', ' Trabajo', 14,30,6)
ap3.occurs_on?(6)

ap2 = DailyAppointment.new('Desafío Latam', ' Trabajo', 14,30)
ap2.occurs_on?(14,30)

ap1 = OneTimeAppointment.new('Desafío Latam', ' Trabajo', 14,30,4,6,2019)
ap1.occurs_on?(4,6,2018)

ap2.to_s



