module AcceptComments 
	def comments
		@comments = @comments || []
		# эквивалент @comments ||= []
		#if @comments
		#	# возвращаемое значение
		#	@comments
		#else
		#	# возвращаемое значение
		#	@comments = []
		#end
	end

	def add_comment(comment)
		# comments это def comments
		comments << comment
	end
end

class Clip

	def play
		puts "Playing #{object_id}..."
	end

end

class Video < Clip
	include AcceptComments

	attr_accessor :resolution
end

class Song < Clip
	include AcceptComments

	attr_accessor :beats_per_minute
end

class Photo   
	include AcceptsComments 

	def show     
		puts "Displaying #{object_id}..."   
	end 
end

video = Video.new 
video.add_comment("Cool slow motion effect!") 
video.add_comment("Weird ending.") 
song = Song.new 
song.add_comment("Awesome beat.") 
p video.comments, song.comments