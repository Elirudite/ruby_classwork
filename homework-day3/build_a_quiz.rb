# Build a quiz program that gets a few inputs from the user including:
# number of questions
# questions
# answers
# Then clear the screen and begin the quiz. Keep score!

@quiz_q_a = {}

@count = 0
@score = 0
@num_q = 0
@quizzes = 0

def generating
	print "Cru"
	sleep(0.5)
	print "nch"
	sleep(0.5)
	print "ing"
	sleep(0.5)
	print " "
	sleep(0.5)
	print "Ma"
	sleep(0.5)
	print "gic"
	sleep(1)
	system"cls"
end

def score
	puts "\r\nYou got a score of #{@score} out of #{@num_q}!"
end

def make_quiz
	puts "How many questions do you want in your quiz?"
	@num_q = gets.chomp.to_i
	while @quiz_q_a.length != @num_q
		puts "What is question #{@count+1}?"
			q = gets.chomp
		
		puts "And the answer to that question?"
			a = gets.chomp.downcase
		@quiz_q_a[q] = a
		@count += 1
	end
	generating
	# @quizzes += 1
	# if @quizzes > 1
	# 	puts "\nWould you like to go ahead and take your quiz? [Y or N]"
	# 	if gets.chomp.upcase == "Y"
	# 		ask_qs
	# 	else
	# 		end_menu
	# 	end
	# end
end

def words
	puts "\r\nThanks for making that quiz!...."
	puts "Here is what you wrote: "
	print "\r\n#{@quiz_q_a}"
	sleep(3)
	generating
	puts "................................."
	puts "Now lets see if you know your own stuff!"
end

def ask_qs
	@quiz_q_a.each do |q, a|
		puts " "
		puts q 
		user_ans = gets.chomp.downcase
		if user_ans == a
			puts "\r\nThat's correct!!"
			@score += 1
		else
			puts "\r\nNOPE!! Sorry, that is wrong. The answer is #{a}."
		end
	end
	generating
end

def end_menu
	puts "\r\nThanks for playing!"
	puts "\r\nWhat would you like to do now?"
	puts "................................."
	puts "................................."
	puts "1. Make a new quiz"
	puts "2. Retake the test"
	puts "3. Go home!"

	choice = gets.chomp.to_i

	generating

	case choice
		when 1
			puts "You picked 'Make a new quiz'. Have fun!"
			make_quiz
		when 2
			puts "Trying to get a better score eh? Have fun!"
			ask_qs
			score
			end_menu
		when 3 
			puts "Goodbye!"
		else
			puts "What do you want from me?! What do u mean?!?!?!"
			end_menu
	end
end

def main
	make_quiz
	words
	ask_qs
	score
	end_menu
end

main



