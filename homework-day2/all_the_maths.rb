# Create a program that will take two numbers and then gives the user a choice 
# of what kind of arthimetic they'd like done to the two numbers. 
# Include at least: add, subtract, multiply and divide. 
# This time you really gotta use methods!

def add_em_up(num1, num2)
	sum = num1 + num2
end

def sub_em_down(num1, num2)
		diff = num1 - num2
end

def mult_em_round(num1, num2)
	prod = num1 * num2
end
#also more conditions for if they wanted to actually divide by the larger number...
def div_em_out(num1, num2)
	if num1 < num2
		div = num2 / num1
	else
		div = num1 / num2
	end
end

def menu(num1, num2)
	puts "Now what do you want me to do with these numbers?"
	puts ".............................."
	puts "1. Add"
	puts "2. Subtract"
	puts "3. Multiply"
	puts "4. Divide"
	puts "5. Exit Program"

	choice = gets.chomp.to_i

	case choice
		when 1
			puts `cls`
			puts "Your answer is #{add_em_up(num1, num2)}."
			menu(num1, num2)
		when 2
			puts `cls`
			puts "Your answer is #{sub_em_down(num1, num2)}"
			menu(num1, num2)
		when 3
			puts `cls`
			puts "Your answer is #{mult_em_round(num1, num2)}."
			menu(num1, num2)
		when 4
			puts `cls`
			puts "Your answer is #{div_em_out(num1, num2)}."
			menu(num1, num2)
		when 5
			puts "Thanks for coming!"
			puts `cls`
		else
			puts "Thats not an option!"
	end
end

puts "Im a math genius!! Give me two numbers! (but make the first bigger than the second, please)"

puts "Number one: "
num1 = gets.chomp.to_f
puts "Number two: "
num2 = gets.chome.to_f

menu(num1, num2)

=begin 
**Original code for chooing numbers... good for a lot of numbers, not DRY 
if we only need a couple numbers
# 2.times do
# 	userNum = gets.chomp.to_f
# 	numbers.push(userNum)
# end
# numbers = []
# num1 = numbers[0]
# num2 = numbers[1]
=end