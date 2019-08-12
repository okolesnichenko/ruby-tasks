class Vehicle
	attr_accessor :odometer, :gas_used

	def accelerate
		puts "Floor it!"
	end

	def sound_horn
		puts "Beep! Beep!"
	end

	def steer
		puts "Turn front 2 wheels."
	end

	def mileage
		return @odometer / @gas_used
	end
end

class Car < Vehicle
end

class Truck < Vehicle
	attr_accessor :cargo

	def load_bed(content)
		puts "Securing #{content} in th truck bed."
		@cargo = content
	end
end

class Motorcycle < Vehicle
	def steer
		puts "Turn front wheel."
	end

	def to_s
		puts "#{odometer} is Motorcycle"
	end
end

class Transformer < Vehicle
	def steer
		puts "Tranformed"
		# вызов версии метода из суперкласса, о super на 120+ страницах
		super
	end
end

trns = Transformer.new
trns.steer

mts = Motorcycle.new
mts.odometer = 10
mts.gas_used = 21
puts mts