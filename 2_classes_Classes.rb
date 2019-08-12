class Dog
	# Вариант записи и чтения 3
	attr_reader :name, :age

	def set_name=(value)
		if value == ""
			raise "Name can't be blank"
		end
		@name = value
	end

	def set_age(value)
		if value < 0
			raise "Age value = #{value} is not valid"
		end
		@age = value
	end

	def talk
		puts "#{@name} says Bark!"
	end

	def move(destination)
		puts "#{@name} move to #{destination}."
	end

	def report_age
		puts "#{@name} age is #{@age} years old."
	end
	
end

class OldDog
	# Вариант записи и чтения 1
	def get_name
		return @name
	end
	def set_name=(value)
		@name = value
	end
	def get_age
		return @age
	end
	def set_age(value)
		@age = value
	end
	# Вариант записи и чтения 2
	attr_accessor :name, :age

	def talk
		puts "#{@name} says Bark!"
	end
	def move(destination)
		puts "#{@name} move to #{destination}."
	end
	def report_age
		puts "#{@name} age is #{@age} years old."
	end
end

class Widget   
	@size = 'large'   
	def show_size     
		puts "Size: #{@size}"   
	end 
end 

class Cat
	def make_up_name
		@name = "Sandy"
	end
	def talk
		puts "#{name} says Meow"
	end
	def move(destination)
		puts "#{name} move to #{destination}"
	end
end

class Bird
	def make_up_name
		@name = "Sandy"
	end
	def talk
		puts "#{name} says Yeet!"
	end
	def move(destination)
		puts "#{name} move to #{destination}"
	end
end

dog = Dog.new
dog.name = "Sandy"
dog.age = 123


puts dog.name
puts dog.age
dog.move 'Atlants'

cat = Cat.new
bird = Bird.new
