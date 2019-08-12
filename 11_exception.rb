class MyErrorMore < StandardError 

end 

def division(a,b)
	begin 
		r = a / b
		if a > 100
			raise MyErrorMore, "a is more then 100"
		end
	rescue  ZeroDivisionError
		puts "ZeroDivisionError -> 0 changed to 1"
		b = 1
		retry
	rescue  MyErrorMore => my_exception
		puts my_exception.message
		a = 99
		retry
	ensure
		puts "Processing"
	end
	puts "Method division(a,b) complited and your result:"
	r
end

puts division(90,0)