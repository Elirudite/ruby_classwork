# Write a loop that continues to display random numbers 
# between 1 and 10 until the number generated is 7.

puts "At what number should I stop? (Between 1 and 10)"

num = gets.chomp.to_i

random = rand(1..10)

while random != num
	puts random
	random = rand(1..10)
end
