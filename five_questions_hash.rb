# Ask the user 5 yes or no questions
# Compare their answer to a list of correct answers
# Print the number of correct answers

# HASH APPROACH	(also added redo feature)

questions_and_answers = 
							{'Are narwhals real?' => 'Y', 
              'Is today Halloween?'=> 'N', 
              'Do dogs say meow?'=> 'N', 
              'Does 2+2 = 4?'=> 'Y',
              'Is Aaron awesome?'=> 'Y'}

score = 0

puts "Please answer 'Y' or 'N' to the following questions: "

questions_and_answers.each do |q, a|

	puts q
	user_ans = gets.chomp.upcase

	if user_ans == "Y" || user_ans == "N"
		if user_ans == a
			score += 1
		end
	else
		puts "NO! You fool! You have to answer with a Y or N!"
		redo
	end
end

puts "You got a score of #{score} out of 5!"