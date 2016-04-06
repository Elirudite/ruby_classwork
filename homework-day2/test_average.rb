# Create an array of test scores (anywhere from 0 to 100; sorry, no extra credit was given).

# Now I want a couple things:

# Print out the scores in ascending order.
# Find the average of those test scores and print it out.

test_scores = %w(100 100 99 48 73 0 88 84 69 95)

10.times do 
	test_scores = rand(1..10)
	

print "Here are the class's test scores from lowest to highest: "
print test_scores.sort_by(&:to_i)

puts " "

find_average = test_scores.map(&:to_i)

average = find_average.reduce(:+).to_f / test_scores.size

puts "And so the average score for the whole class comes out to be: #{average}."