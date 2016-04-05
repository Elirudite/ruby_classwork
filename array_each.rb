# animals = %w(snakes monkies dolphins pandas dogs cats octopi horses squid dragons)

# favAnimal = "octopi"

# animals.each do |animal|
# 	if animal == favAnimal
# 		puts "I love #{animal}!"
# 	end
# end

# Ask the user for 5 numbers,
# store them in an array,
# then find the sum, product, largest, and smallest of those numbers.

numbers = []

puts "Please give me 5 numbers"

5.times do 
	num = gets.chomp.to_i
	numbers.push(num)
end

sum = 0
product = 1

numbers.each do |num|
	sum += num
	product *= num
end

puts "The smallest number is: #{numbers.sort.first}"
puts "The largest number is: #{numbers.sort.last}"
puts "The sum of those numbers is: #{sum}"
puts "The product of those numbers is: #{product}"