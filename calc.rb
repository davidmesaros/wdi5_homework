#import
require 'moduleprime'

#helpers
def quit_message
	puts "q to quit"
end

def user_input
		n1 = input_return("What is your first number?")
		n2 = input_return("What is your second number?")	
		return [n1, n2]
end
#sanitise input
def input_return(message)
	number = nil
	while number == nil
		print message
		begin
			number = Float(gets.chomp)
		rescue
			puts "You screwed up! Put a number"
		end
	end
	number
end

#base menu
def start
	running = true
	while running
		quit_message
		print "Would you like to do a (b)asic, (a)dvanced calculation?, (m)ortgage, bm(i), p(r)ime or (t)rip?"
		response = gets.chomp
			case response
			when 'b'
				basic_calc
			when 'a'
				advanced_calc
			when 'm'
				mortgage_calc
			when 'i'
				bmi_calc
			when 't'
				trip_calc
			when 'q'
				puts 'Seeya!'
				running = false
			else 
				puts "Not valid"
		end
	end
end

#calculators
def basic_calc
	running = true
	while running
		quit_message
		print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "	
		response = gets.chomp.downcase

		case response
			when 'a'
				answer = add(user_input)
				puts "The answer is #{answer}"
			when 's'
				answer = subtract(user_input)
				puts "The answer is #{answer}"
			when 'm'
				answer = multiply(user_input)
				puts "The answer is #{answer}"
			when 'd'
				answer = divide(user_input)
				puts "The answer is #{answer}"
			when 'c'
				advanced_calc
			when 'q'
				running = false
			else 
			puts "Not valid"	
		end
	end
end

def advanced_calc
	running = true
	while running
		quit_message
		print "(p)ower, (s)qrt: "
		response = gets.chomp.downcase
		case response
		when 'p'
			puts "The answer is #{power(user_input)}"
		when 's'
			print "What is the number?"
			puts "The square root is #{sqrt(gets.to_i)}"
		when 'q'
			running = false
		else 
			puts "Not valid"
		end
	end
	start
end

def mortgage_calc
	running = true
	while running
		p = input_return("What is the principal?")
		i = input_return("What is the interest as a %?")/100/12
		n = input_return("What is the period?")
		m = p*((i*(1+i)**n)/((1+i)**n-1))
		puts "The monthly repayment is #{m}"
		print "y for another?"
		input = gets.chomp.downcase
		unless input == 'y' 
			running = false
		end
	end
end

def bmi_calc
	running = true
	while running
		h = input_return("What is your height in metres?")
		w = input_return("What is your weight in kilograms?")
		puts "Your BMI is #{w/(h**2)}"
		print "y for another?"
		input = gets.chomp.downcase
		unless input == 'y' 
			running = false
		end
	end
end

def trip_calc
	running = true
	while running
		d = input_return("How far will you drive(miles)?")
		mpg = input_return("What is the fuel efficiency of the car?")
		gallon_price = input_return("What is the price of fuel per gallon?")
		speed = input_return("How fast will you drive?")
		if speed > 60
			over60 = speed -60
			mpg = mpg-over60*2
		end
		puts "Your trip will take #{d/speed} hours and cost $#{d/mpg}"
		print "y for another?"
		input = gets.chomp.downcase
		unless input == 'y' 
			running = false
		end
	end
end

def prime
	number = input_return("What number do you think is prime?")
	if ModulePrime.is_prime?(number)
		puts "It is prime"
	else
		puts "It is not prime"
	end

end
#math functions
def add(array)
	array[0] + array[1]
end

def subtract(array)
	array[0] - array[1]
end

def multiply(array)
	array[0] * array[1]
end

def divide(array)
	array[0] / array[1]
end

def power(array)
	array[0] ** array[1]
end

def sqrt(n)
	n ** 0.5
end


# start program
start