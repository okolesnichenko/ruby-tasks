# Get my number game
# 54

# 1) Приветствие игрока
puts "Welcome to 'Get My Number!'"
print "What's your name? "

num_guesses = 0
guessed_it = false

# 2) Получем его ввод и приветствем с именем
input = gets

if input
	# проверка истинного содержимого через input.inspect 
	username = input.chomp
	puts "Welcome, #{username}!"
else
	puts "Welcome Guest!"
end

# 3) Начало игры
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"

target = rand(100) + 1

while num_guesses < 10 && !guessed_it
	num_guesses += 1
	puts "#{10 - num_guesses} guesses left. "

	print "Make a guess: "
	guess = gets.to_i

	if guess > target
		puts "Oops. Your guess was HIGH"
	elsif guess < target 
		puts "Oops. Your guess was LOW"
	elsif guess == target
		puts "Good job, #{username}! You guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end
end

if num_guesses == 10 
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end