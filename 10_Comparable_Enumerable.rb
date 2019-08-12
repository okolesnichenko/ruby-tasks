# Comparable:

# 1) Предоставляет <, >, == и еще три метода. 
# 2) Включается классами String, Fixnum и другими числовыми классами. 
# 3) Включающий класс должен предоставить метод <=>.

class Steak 

   	include Comparable

   	GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1} 

   	attr_accessor :grade 

   	def <=>(other)     
   		if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]       
   			return -1     
   		elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]       
   			return 0     
   		else       
   			return 1     
   		end   
   	end
   	 
end
 

# Enumerable:

# 1) Предоставляет методы find_all, reject, map и еще 47 других методов. 
# 2) Включается классами Array, Hash и другими классами коллекций. 
# 3) Включающий класс должен предоставить метод each

class WordSplitter 

    include Enumerable 

   	attr_accessor :string 

   	def each     
   		string.split(" ").each do |word|       
   			yield word     
   		end   
   	end 

 end
