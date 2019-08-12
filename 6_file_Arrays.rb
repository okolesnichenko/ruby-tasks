def find_adjective(str)
	words = str.split(" ")
	index = words.find_index("is")
	words[index + 1]
end

lines = []

File.open("reviews.txt") do | review_file |
	lines = review_file.readlines
end

#lines.each do | line | 
#	if line.include?("Truncated")
#		relevant_lines.push(line) 
#	end
#end

relevant_lines = lines.find_all {|line| line.include?("Truncated")}

reviews = relevant_lines.delete_if {|line| line[0,2].include?("--")}

adjectives = reviews.map do |str| 
	adjective = find_adjective(str)
	"#{adjective.capitalize}" 
end

puts adjectives