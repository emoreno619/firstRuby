# Temperature Convertor

# Create a simple temperature convertor.

def tempConv
	puts "Type '1' to convert from Celsius to Fahrenheit OR '2' to conver from Fahrenheit to Celsius"
	input = gets.to_i
	if input == 1
		puts "Enter a Celsius temperature"
		temp = gets.to_f
		tempR = temp * (9/5) + 32
		puts "#{temp} degrees Celsius is equal to #{tempR} degrees Fahrenheit"
	elsif input == 2
		puts "Enter a Fahrenheit temperature"
		temp = gets.to_f
		tempR = (temp - 32) * 5/9
		puts "#{temp} degrees Fahrenheit is equal to #{tempR} degrees Celsius"
	else
		puts "You're not following instructions..."
	end
end

puts("Temperature Conversion Output")

tempConv

def guessingGame
	random = Random.new
	randNum = random.rand(1..100)

	puts "Guess a number "
	input = gets.chomp.to_i

	while input != randNum
		if input < randNum
			puts "#{input} is too low. Guess again."
			input = gets.chomp.to_i
		end
		if input > randNum
			puts "#{input} is too high. Guess again."
			input = gets.chomp.to_i
		end
	end

	puts "You guessed correctly! The secret number was #{input}"
end

puts("Guessing Game Output")

guessingGame

def makeTriangle
	puts "How many rows do you want?"
	rowCount = gets.chomp.to_i
	i = 1
	aChar = 1


	while i <= rowCount #row #
		
		while aChar <= i*2-1 #builds a row
			if aChar == 1
				print sprintf("%#{rowCount - i + 1}c", " ")
			end
			print sprintf("%#{}c", "*")
			aChar += 1
		end

		puts
		aChar = 1
		i += 1
	end
end

puts("Triangle Output")

makeTriangle

def multiTable row=9, col=9
	# puts "What are the dimensions of your table?"
	x = 0
	y = 0
	
	puts "A multiplication table:"

	while x <= row
		if x != 0
			print "#{x}|"
		end
		while y <= col
			if x == 0
				print sprintf("%#{x+1*5}c", " ")
				if y < col
					print y + 1	
				end
			elsif y != 0
				if y == 1
					print sprintf("%3c", " ")
				elsif x*y >9
					print sprintf("%4c", " ")
				else
					print sprintf("%5c", " ")
				end
				print x * y
			end
			y += 1
		end
		puts
		x += 1
		y = 0
	end
end

puts("Multiplication Table Output")

multiTable 9, 4

def revStr aStr
	puts aStr
	i = 0
	while i < aStr.length/2
		temp = aStr[aStr.length-1-i]
		aStr[aStr.length-1-i] = aStr[i]
		aStr[i] = temp
		i += 1
	end
	puts aStr
end

puts("Reverse Output")

revStr("hi")

revStr("racecar")

revStr("stressed")