# Guessing Game: user provides a number (between 1 and 10), 
# if the number stored in the program is the same, "Wow!", else, "Nope!"

puts "Pick a number! Any number! (between 1 and 100!)"

num = gets.chomp.to_i

x = rand(1..100)

if num == x
	puts "WOAH! Ya got meh!! Dang telepaths..."
elsif num >= (x - 5) && num <= (x + 5)
	puts "Close shave, but no skin!"
elsif num < 1 || num > 100
	puts "Aye! Thats not a number between 1 and 100!"
else
	puts "NOPE! HAHA!!! You'll never get me, sucka!"
end
