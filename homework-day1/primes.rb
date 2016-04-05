# Create a Ruby program that finds how many prime numbers 
# are between 1 and a number given by the user.
# Hint: google "Ruby prime", and note that sometimes you must 
# import, or require, certain Ruby libraries

require "prime"

puts "Pick a number, any number!"

userNum = gets.chomp.to_i

num = 0

Prime.each(userNum) do |prime|
	num += 1
end

puts "Did you know, there are #{num} prime numbers between 1 and #{userNum}?!"

=begin
**The Below is supposed to be a more manual way of doing the above...(unfinished)**
	
while (userNum <= 1)
	prime_flag = true

	x = 2

	while (x <= userNum / 2)
		if (num % x == 0)
			prime_flag = false
		break
		end

	x += 1

end

if prime_flag
	puts it 

=end