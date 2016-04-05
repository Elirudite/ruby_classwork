# Create a program that takes two numbers from the user and 
# find out if the first is divisible by the second.
# Extra Challenge: Tell them what the quotient is.

puts "I need two numbers from you, please!"
puts "A larg(ish) number..."
num1 = gets.chomp.to_i

puts "Thank you! One more, please. A small(er) number..."
num2 = gets.chomp.to_i
puts "Thanks!"

if num1 % num2 == 0
	puts "Those numbers are divisible! :D"
else
	puts "Those numbers are not divisible. :("
	remainder = num1 % num2
	puts "You have a remainder of #{remainder}."
end

puts "Thanks for playing! Goodbye!"