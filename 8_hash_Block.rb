class Planet
	attr_accessor :name, :text

	def initialize(name = "Earth", text)
		self.name = name
		self.text = text
	end
end

bodies = Hash.new do | hash, key |
	body = Planet.new("Earth","planet")
	hash[key] = body
end

bodies[5].name = "Mars"

p bodies