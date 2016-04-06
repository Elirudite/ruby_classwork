# Write a program that asks the user for all U.S. states they have visited. 
# Typing "done" should terminate the program. Print all states to the screen.


states = []

puts "Enter all the states you've been to. Type 'done' when you're finished: "

state = ""

while state.downcase != "done"

	state = gets.chomp
	states.push(state) if state.downcase != "done"
	
end

# states.pop << if you dont use the if statement conditional thingy to get rid of done...

puts system"cls"
puts states.join(", ")
puts "That's #{states.length} states!"