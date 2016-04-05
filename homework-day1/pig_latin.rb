# Write a program that translates one English word into Pig Latin.

# Because the rules for Pig Latin can vary, I'll be specific:

# If the given word starts with a consonant, 
#  move only that consonant to end and then add "ay" to the end 
#  (e.g.: coffee -> offeecay, blogger -> loggerbay)
# If the given word starts with a vowel, add "way" to the end of the word 
#  (e.g., office -> officeway)
# Extra Challenge: change the program so that a word that starts with two or more consonants 
#  moves all those consonants to the end before attaching "ay" 
#  (e.g., blogger -> oggerblay, school -> oolschay)

puts "We're going to learn a new 'language'!"

puts "Please give me a word..."

userWord = gets.chomp.downcase

vowels = %w[a e i o u]

=begin
**Logic Tree/Answer: **
if (userWord does not start with a vowel do )
	grab the first letter 
	then use interpolation to put it at the end +'ay'
else 
	just put the 'ay' at the end

	For the Extra Challenge: may have to make a variable (array) for consonants,
	and then iterate and save that number as a count-type variable (called position)
	and use that position variable in the split [1..position] << like this...
=end

 if vowels.include?(userWord[0])
 	piggified = userWord + "way"
 else
 	piggified = "#{userWord[1..-1]}#{userWord[0,1]}ay"
 end

puts "You mean #{piggified}."

 # userWord[0] != 'a' || userWord[0] != 'e' || userWord[0] != 'i' || userWord[0] !=  'o' || userWord[0] != 'u'

