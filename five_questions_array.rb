# Ask the user 5 yes or no questions
# Compare their answer to a list of correct answers
# Print the number of correct answers

# ARRAY APPROACH	(used .each_with_index instead of regular .each)

questions = ['Are narwhals real?', 
              'Is today Halloween?', 
              'Do dogs say meow?', 
              'Does 2+2 = 4?',
              'Is Aaron awesome?']

correct_answers = ['Y', 'N', 'N', 'Y', 'Y']

score = 0

puts "Please answer 'Y' or 'N' to the following questions: "

questions.each_with_index do |q, index|

	puts q
	ans = gets.chomp.upcase

	if ans == correct_answers[index]
		score += 1
	end

end

puts "You got a score of #{score} out of 5!"