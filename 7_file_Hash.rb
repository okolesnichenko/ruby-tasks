lines = []

File.open("votes.txt") do | file |
	lines = file.readlines
end

votes = Hash.new(0)

lines.each do |line|
	name = line.chomp
	name.upcase!
	votes[name] += 1
end

votes.each do |key, value|
	puts "#{key}: #{value}"
end

# Original
#class Candidate
#	attr_accessor :name, :age, :hobby
#	def initialize(name, options = {})
#		self.name = name
#		self.age = options[:age]
#		self.hobby = options[:hobby]
#	end
#end

class Candidate
	attr_accessor :name, :age, :hobby, :sex
	def initialize(name, age:, hobby: nil, sex: nil)
		self.name = name
		self.age = age
		self.hobby = hobby
		self.sex = sex
	end
end

# Original
#calr = Candidate.new("Stew", {:age => 12, :hobby => "Tennis"})
#<Candidate:0x0000000007026b90 @name="Stew", @age=12, @hobby="Tennis">
#calr = Candidate.new("Stew")

calr = Candidate.new("Stew", age: 12)
#<Candidate:0x0000000007026b90 @name="Stew", @age=12, @hobby="Tennis">
p calr