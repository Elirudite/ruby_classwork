# Create a program that takes a name (or any word), 
# and spells it out, one letter at a time.
# Extra Challenge: Try to spell it out all in one line, separating the letters with a comma

puts "I am a spelling bee champion! Won the prestigious 'I Know My ABCs AND How to Spell'
awards 88 times in a row!!"

puts "Give me a word. Any word! And I will spell it out for you."

word = gets.chomp

wordplay = word.upcase.reverse

word2 = word.upcase

spell = word.length

until spell == -1
	print wordplay[spell]
	spell -= 1
end

# word2.each_char {|c| print c, ", " }[0..-2]

puts " "
puts "BOOM! That spells '#{word.capitalize}'!"

#Teach's version: (complete)

=begin
name = gets.chomp

count = 0

until count == name.length
	puts name[count].upcase
	count += 1
end

puts "That spells#{name}."

##Extra Chellenge:

count = 0
while count <name.length
	if count < name.length -1 
		print "#{name[count].upcase}, "
	else
		puts "#{name[count].upcase}"
	end
	count += 1
end


# Splits string by character (into an array) and then joins (the array) seperated by commas
# put name.upcase.split(//).join(", ")

puts "That spells #{name}."
=end