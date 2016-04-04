# Ask the user for their number grade, if the grade is at least 60, tell them they passed! 
# If it's lower than 60, tell them they have to take the class again.

puts "So, what's your grade, eh? (Gimme the number, I dont want no letters...)"

grade = gets.chomp.to_i

if grade >= 70
	puts "You passed! Good job!"
elsif grade >= 60 && grade < 70
	puts "You barely squeeked by there!"
else
	puts "WHAT?! You failed! Now you gotta waste your summer away in school. Tsktsktsk..."
end